class Certificate < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :activity_description, presence: true
end
