class Content < ApplicationRecord

  include ActiveModel::Dirty
  has_many :translations

  after_create :init
  after_commit :submit_job

  private

  def init
    self.from_lang = "EN"
  end

  def submit_job
    saved_change = saved_change_to_text?
    TranslateJob.perform_later(self) if saved_change
  end
end
