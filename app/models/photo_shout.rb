class PhotoShout < ActiveRecord::Base
    # This method is from paper clip gem
  has_attached_file :image, styles: {
    shout: "200x200>"
  }

  def index
    image_file_name
  end
end
