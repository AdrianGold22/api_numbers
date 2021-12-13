class Aleatorio < ApplicationRecord
    validates :numero, presence: true
    validates :tipo, presence: false     
    
end
