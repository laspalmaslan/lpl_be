class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_attached_file :data,
                    :storage => :s3,
                    :s3_credentials => {
                    :s3_host_name  =>"s3-eu-west-1.amazonaws.com",
                    :bucket            => ENV['S3_BUCKET_NAME'],
                    :access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
                    :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']},
                    :path => "attachments/:id/:style_:basename.:extension"

  validates_attachment_size :data, :less_than => 100.megabytes
  validates_attachment_presence :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
