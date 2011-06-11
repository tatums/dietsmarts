Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter, 'FvU855KalGA9NQR3qopRA', 'Dpw5I1XHb5QfMpRohbUIeXbM5V81Hv2lQwu1LLy2A'
  provider :facebook, '12799b7a1058f1567d235035af085799', 'c51e64df5bace8e2cfb94cd791c17fa2'  
    
    
    
  #provider :openid, OpenID::Store::Filesystem.new('./tmp'), :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
    
    
end