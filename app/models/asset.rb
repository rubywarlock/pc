class Asset < ActiveRecord::Base
  attr_accessible :asset, :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at, :content_id, :assets_attributes
	belongs_to :content
	has_attached_file :asset
  validates_attachment_content_type :asset, :content_type => [ 'text/plain', 'application/pdf', 'application/octet-stream', 'application/msword', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ]
	#do_not_validate_attachment_file_type :asset
end