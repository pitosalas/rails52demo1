require 'easy_translate'

class TranslationHelper
  KEY = Rails.application.credentials.google[:key]
  
  def self.translate(document, fromlang, tolang)
    raise "Invalid language code: #{fromlang} or #{tolang}" unless self.validate_lang(fromlang) && self.validate_lang(tolang)
    EasyTranslate.translate(document, from: fromlang.to_sym, to: tolang.to_sym, key: KEY)
  end

  def self.validate_lang(lang)
    EasyTranslate::LANGUAGES.has_key? lang.downcase
  end
end