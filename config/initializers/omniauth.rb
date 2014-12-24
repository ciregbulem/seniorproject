OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '843424195701550', '5304a9bd7cc7ffb83bda1b722eb09837',
           :scope => 'public_profile',
           :display => 'popup',
           :auth_type => 'reauthenticate',
           :image_size => 'normal',
           :info_fields => 'id,age_range,birthday,email,gender,first_name,last_name,name',
           :callback_url => 'http://localhost:3000/clients/new'
end