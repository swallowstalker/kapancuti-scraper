require 'rspec'
require_relative '../../lib/importer/scraper'

TARGET_YEAR = 2018
HOLIDAY_SCRAP_TARGET = "spec/contoh-liburan.html"

describe 'Scraper.scrap' do

  let(:scraper) {Importer::Scraper.new}

  it 'should scrap with matching expected result' do

    expected_result = [{:name=>"Tahun Baru Masehi", :date=>"1 Januari 2018"},
                       {:name=>"Tahun Baru Imlek", :date=>"16 Februari 2018"},
                       {:name=>"Hari Raya Nyepi", :date=>"17 Maret 2018"},
                       {:name=>"Jumat Agung", :date=>"30 Maret 2018"},
                       {:name=>"Isra Miraj", :date=>"14 April 2018"},
                       {:name=>"Hari Buruh", :date=>"1 Mei 2018"},
                       {:name=>"Kenaikan Isa Almasih", :date=>"10 Mei 2018"},
                       {:name=>"Hari Raya Waisak", :date=>"29 Mei 2018"},
                       {:name=>"Hari Lahir Pancasila", :date=>"1 Juni 2018"},
                       {:name=>"Cuti Bersama", :date=>"13 - 14 Juni 2018"},
                       {:name=>"Idul Fitri", :date=>"15 - 16 Juni 2018"},
                       {:name=>"Cuti Bersama", :date=>"18 - 19 Juni 2018"},
                       {:name=>"Pilkada", :date=>"27 Juni 2018"},
                       {:name=>"Hari Kemerdekaan", :date=>"17 Agustus 2018"},
                       {:name=>"Idul Adha", :date=>"22 Agustus 2018"},
                       {:name=>"Tahun Baru Hijriyah", :date=>"11 September 2018"},
                       {:name=>"Maulid Nabi", :date=>"20 November 2018"},
                       {:name=>"Cuti Bersama", :date=>"24 Desember 2018"},
                       {:name=>"Hari Natal", :date=>"25 Desember 2018"}]

    scrap_result = scraper.scrap(TARGET_YEAR, HOLIDAY_SCRAP_TARGET)
    expect(scrap_result).to eq(expected_result)
  end
end