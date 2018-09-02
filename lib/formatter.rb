
module Formatter
  class Date

    DATE_REGEX = /^(\d+)( - (\d+))? ([A-z]+) (\d+)$/
    MONTH_NAME_TO_NUMBER = {
        'Januari' => 1,
        'Februari' => 2,
        'Maret' => 3,
        'April' => 4,
        'Mei' => 5,
        'Juni' => 6,
        'Juli' => 7,
        'Agustus' => 8,
        'September' => 9,
        'Oktober' => 10,
        'November' => 11,
        'Desember' => 12,
    }

    def convert(date_string)
      result = DATE_REGEX.match(date_string)
      start_day = result[1].to_i

      end_day = start_day
      unless result[3].nil?
        end_day = result[3].to_i
      end

      month = MONTH_NAME_TO_NUMBER[result[4]]
      year = result[5].to_i

      date_list = []
      current_day = start_day
      while current_day <= end_day
        date_list.push(sprintf("%.4d-%.2d-%.2d", year, month, current_day))
        current_day += 1
      end

      date_list
    end
  end
end