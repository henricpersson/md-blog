class Secret < ActiveRecord::Base
  attr_accessible :google_client_id, :google_client_secret
end
