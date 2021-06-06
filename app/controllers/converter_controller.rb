require 'date'

class ConverterController < ApplicationController
  def api
    time_value = request.query_parameters[:time]

    time_value = Time.now.strftime('%s') if time_value.nil?

    if time_value.length == 13
      unix = time_value.to_i / 1000
      utc = DateTime.strptime(unix.to_s, '%s')
      unix = unix.to_i * 1000
    elsif time_value.include? '-'
      utc = DateTime.strptime(time_value.to_s, '%Y-%m-%d')
      unix = utc.strftime('%s').to_i * 1000
    else
      unix = time_value
      utc = DateTime.strptime(unix.to_s, '%s')
      unix = unix.to_i * 1000
    end

    render json: { "unix": unix.to_s, "utc": utc }
  end
end
