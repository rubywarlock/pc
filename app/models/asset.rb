class Asset < ActiveRecord::Base
  attr_accessible :asset, :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at, :content_id
	belongs_to :content
	has_attached_file :asset
	do_not_validate_attachment_file_type :asset
end