require 'gdal'
puts (0..Gdal::Ogr.get_driver_count-1).map { |n| Gdal::Ogr.get_driver(n).get_name }.join(', ')