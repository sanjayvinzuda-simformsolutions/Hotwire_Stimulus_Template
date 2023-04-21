class Story < ApplicationRecord
  validates :title, :description, presence: true
  after_create_commit { broadcast_prepend_to 'stories' }

  scope :is_read?, -> { where(mark_as_read: nil)}
  # Ex:- scope :active, -> {where(:active => true)}

  def self.is_unread?
    where(mark_as_read: nil)
  end
end
