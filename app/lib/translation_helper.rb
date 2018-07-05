require 'easy_translate'

class TranslationHelper
  KEY = Rails.application.credentials.google[:key]

  def self.translate(document, fromlang, tolang)
    raise "Invalid language code: #{fromlang} or #{tolang}" unless validate_lang(fromlang) && validate_lang(tolang)
    if fromlang == tolang
      return document
    else
      EasyTranslate.translate(document, from: fromlang.to_sym, to: tolang.to_sym, key: KEY) if fromlang
    end
  end

  def self.validate_lang(lang)
    EasyTranslate::LANGUAGES.key? lang.downcase
  end
end
