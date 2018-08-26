require_relative 'lib/importer/scraper'


TARGET_YEAR = 2018
HOLIDAY_SCRAP_TARGET = "https://www.liburnasional.com/kalender-#{TARGET_YEAR}/"
# HOLIDAY_SCRAP_TARGET = "spec/contoh-liburan.html"

scraper = Importer::Scraper.new
holidays = scraper.scrap(TARGET_YEAR, HOLIDAY_SCRAP_TARGET)

puts holidays.inspect