class Translation < ApplicationRecord
  belongs_to :content

  include ActiveModel::Dirty
  after_commit :submit_job

  private

  def submit_job
    saved_change = saved_change_to_translation? || saved_change_to_to_lang?
    TranslateJob.perform_later(content) if saved_change
  end

end
