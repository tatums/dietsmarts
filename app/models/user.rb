class User < ActiveRecord::Base
  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end

  has_many :comments
  has_many :upvotes
  has_many :downvotes


  def full_name
    if first.nil?
      name.to_s
    else
      first.to_s + " " + last.to_s
    end
  end
  

  def self.create_with_omniauth(auth)  
      create! do |user|  
        user.provider = auth["provider"]  
        user.uid = auth["uid"]  
        user.name = auth["user_info"]["name"]  
        user.email = auth["user_info"]["email"]  
        user.nickname = auth["user_info"]["nickname"]  
        user.first = auth["user_info"]["first"]  
        user.last = auth["user_info"]["last"]  
        user.location = auth["user_info"]["location"]  
        user.description = auth["user_info"]["description"]  
        user.image = auth["user_info"]["image"]  
        user.phone = auth["user_info"]["phone"]  
        user.urls = auth["user_info"]["urls"]  

    end  
  end

end
