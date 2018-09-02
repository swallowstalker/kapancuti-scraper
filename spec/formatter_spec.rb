require 'rspec'
require_relative '../lib/formatter'

describe 'Date.convert' do

  let(:formatter) {Formatter::Date.new}

  it 'should format scrapped date to YYYY-MM-DD format' do

    expected_result = ['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04']
    format_result = formatter.convert('1 - 4 Januari 2018')
    expect(format_result).to eq(expected_result)

    expected_result = ['2018-01-05']
    format_result = formatter.convert('5 Januari 2018')
    expect(format_result).to eq(expected_result)
  end
end