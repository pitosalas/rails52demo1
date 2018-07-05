require 'test_helper'

class TranslationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content = contents(:one)
    @translations = contents(:one).translations
    @translation = @translations.first
  end

  test "should get new" do
    get new_content_translation_url(@content)
    assert_response :success
  end

  test "should create translation" do
    assert_difference('Translation.count') do
      post content_translations_url(@content, 
              params: {translation: {to_lang: @translation.to_lang, 
                       translation: @translation.translation}})
    end
    assert_redirected_to contents_url
  end

  test "should get edit" do
    get edit_content_translation_url(@content, @translation)
    assert_response :success
  end

  test "should update translation" do
    patch content_translation_url(@content, @translation), 
                  params: {translation: {content: @translation.content, 
                          to_lang: @translation.to_lang, translation: @translation.translation}}
    assert_redirected_to content_url(@content)
  end

  test "should destroy translation" do
    assert_difference('Translation.count', -1) do
      delete content_translation_url(@content, @translation)
    end

    assert_redirected_to content_url(@content)
  end
end
