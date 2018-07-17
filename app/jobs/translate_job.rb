class TranslateJob < ApplicationJob
  queue_as :translator

  def perform(content)
    raise "invalid perform" unless content.class == Content
    valid_lang = TranslationHelper.validate_lang(content.from_lang)
    raise "invald from lang" unless valid_lang
    content.translations.each do |xlate|
      xlate.translation = 
        TranslationHelper.translate(content.text, content.from_lang, xlate.to_lang)
      xlate.save
      generate_push(xlate.id, xlate.translation)
    end
  end

  def generate_push(id, text)
    ActionCable.server.broadcast "updater", {
      id: id,
      translation: text
    }
  end

end
