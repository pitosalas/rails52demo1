class TranslateJob < ApplicationJob
  queue_as :translator

  def perform(content)
    raise "invalid perform" unless content.class == Content
    valid_lang = TranslationHelper.validate_lang(content.from_lang)
    raise "invald from lang" unless valid_lang
    # TODO
    # content.t = TranslationHelper.translate(content.text, content.from_lang, content.to_lang)
    content.save
  end
end
