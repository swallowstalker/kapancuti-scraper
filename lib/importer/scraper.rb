
require 'nokogiri'
require 'open-uri'

# This module will scrap given html file or URI and parse holiday content.
module Importer
  class Scraper
    def scrap(year, uri)
      page = Nokogiri::HTML(open(uri))
      holidays = []

      page.css('table.libnas-kalender-table div.libnas-calendar-holiday-title').each do |summary|

        holiday_name = summary.css('span[itemprop=summary] a').text
        holiday_date = summary.css('time.libnas-calendar-holiday-datemonth').text

        holiday = {
            name: holiday_name,
            date: holiday_date
        }

        holidays.push(holiday)
      end

      holidays
    end
  end

end



