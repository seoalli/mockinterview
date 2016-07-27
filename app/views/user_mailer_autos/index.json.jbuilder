json.array!(@user_mailer_autos) do |user_mailer_auto|
  json.extract! user_mailer_auto, :id
  json.url user_mailer_auto_url(user_mailer_auto, format: :json)
end
