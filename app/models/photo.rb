class Photo < ActiveRecord::Base
 mount_uploader :picture, Pictureuploader
  belongs_to :place
end
