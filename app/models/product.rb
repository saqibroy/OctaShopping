class Product < ActiveRecord::Base
	mount_uploader :image_url, FileUploader
end
