require 'test_helper'

class TranslationHelperTest < ActiveSupport::TestCase
  describe TranslationHelper do
    it 'identifies correct and incorrect languages' do
      TranslationHelper.validate_lang("EN").must_equal true
      TranslationHelper.validate_lang("en").must_equal true
      TranslationHelper.validate_lang("af").must_equal true
      TranslationHelper.validate_lang("ex").must_equal false
    end

    it 'successfully translates' do
      TranslationHelper.translate("hello world", "en", "ES").must_equal("Hola Mundo")
    end
  end
end
