class TranslateJob < ApplicationJob
  queue_as :translator

  def perform(content)
    raise "invalid perform" unless content.class == Content
    valid_lang = TranslationHelper.validate_lang(content.from_lang) && TranslationHelper.validate_lang(content.to_lang)
    raise "invald from or two lang" unless valid_lang
    content.translated = TranslationHelper.translate(content.original, content.from_lang, content.to_lang)
    content.save
  end
end
