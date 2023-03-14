class AnimeComment < ApplicationRecord
  
  belongs_to :customer_params
  belongs_to :anime_params
  
end

