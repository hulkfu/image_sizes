require 'mini_magick'

module ImageSizes
  def self.gen(image_path)
    image = MiniMagick::Image.open(image_path)
    puts "Get image at: " + image.path
    image.format "png"

    ios_icon_sizes = [29, 40, 50, 57, 58, 60, 72, 76, 80, 87, 100, 114, 120, 144, 180, 152, 512, 1024]
    apple_watch_icon_sizes = [196, 172, 88, 87, 80, 58, 55, 48]

    all_sizes = ios_icon_sizes + apple_watch_icon_sizes

    all_sizes.uniq.sort.reverse.each do |size|
    	image.resize "#{size}x#{size}"
      name = "icon-#{size}.png"
    	image.write name
      puts "Gen #{name}"
    end
  end
end
