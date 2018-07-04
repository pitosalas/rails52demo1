require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  describe "Simplest Content Check" do
    it "can be created" do
      content = Content.create(text: "The quick brown fox", from_lang: "en")
      content.valid?.must_equal true
    end
  end
end
