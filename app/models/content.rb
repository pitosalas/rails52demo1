class Content < ApplicationRecord

  include ActiveModel::Dirty

  after_create :init
  after_commit :submit_job

  private

  def init
    self.from_lang = "EN"
    self.to_lang = "ES"
  end

  def submit_job
    saved_change = saved_change_to_original? || saved_change_to_to_lang?
    TranslateJob.perform_later(self) if saved_change
  end
end
