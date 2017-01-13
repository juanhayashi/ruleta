ForecastIO.configure do |c|
  if Rails.env.production?
    # production settings
    c.default_params   = {units: 'si'}
    c.api_key = ''
  else
    # dev. and test settings
    c.default_params   = {units: 'si'}
    c.api_key = Rails.application.secrets.WEATHER_API_KEY
  end
end
