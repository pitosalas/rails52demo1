require 'test_helper'

class TranslateJobTest < ActiveJob::TestCase
  describe "basic case works" do
    it "can translate from english to spanish" do
      content = Content.create(text: "Hello world", from_lang: "en")
      ::TranslateJob.perform_now(content)
    end
  end

  describe "activerecord submission works" do
    it "will get correctly queued" do
      assert_enqueued_with(job: TranslateJob) do
        content = Content.create(text: "Hello world", from_lang: "en")
      end
    end
  end
end
