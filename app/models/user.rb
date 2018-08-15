class User < ApplicationRecord
    
    def self.find_or_create_by_auth(auth_data)
        where(provider: auth_data.provider, uid: auth_data.uid).first_or_initialize.tap do |user|
            user.name = auth_data.info.name
            puts "#{user.name}"
            user.save!
        end
        #find_or_create_by_auth(auth_data["uid"], auth_data["provider"], name: auth_data["info"]["name"] )
    end
end
