require 'fileutils'
my_dir = Dir["*.mp3"]

my_dir.each do |music_name|
	find_band_name = music_name.split("-")
	band_name = find_band_name[0]
	dir_destiny = "#{band_name}/"

	Dir.mkdir(band_name)unless File.exists?(band_name)
	FileUtils.mv music_name, dir_destiny
	# unless File.directory?(band_name)
	# 	p "existe diretorio"
	# else
	# 	p "Não existe diretorio"
	# 	FileUtils.mkdir(band_name)
	# 	dir_destiny = "#{band_name}/"
	# 	
	# end

end

