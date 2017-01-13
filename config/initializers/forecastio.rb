ForecastIO.configure do |c|
  if Rails.env.production?
    # production settings
    c.default_params   = {units: 'si'}
    c.api_key = ENV['WEATHER_KEY']
  else
    # dev. and test settings
    c.default_params   = {units: 'si'}
    #c.api_key = Rails.application.secrets.WEATHER_API_KEY
    c.api_key = '2be927b339e016ef33bd28f3483f4923'
  end
end
