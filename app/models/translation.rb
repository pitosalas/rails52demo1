class Translation < ApplicationRecord
  belongs_to :content

  include ActiveModel::Dirty
  after_commit :submit_job

  private

  def submit_job
    saved_change = saved_change_to_to_lang?
    if saved_change
      TranslateJob.perform_later(content)
      puts "******* Running translation job! #{saved_change}"
    end
  end

end
