class Certificate < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  belongs_to :user
  validates :activity_description, presence: true
end
