require 'test_helper'

class TranslateJobTest < ActiveJob::TestCase
  describe "basic case works" do
    it "can translate from english to spanish" do
      content = Content.create(original: "Hello world", from_lang: "en", to_lang: "es")
      ::TranslateJob.perform_now(content)
      content.translated.must_equal "Hola Mundo"
    end
  end

  describe "activerecord submission works" do
    it "will get correctly queued" do
      assert_enqueued_with(job: TranslateJob) do
        content = Content.create(original: "Hello world", from_lang: "en", to_lang: "es")
      end
    end
  end
end
