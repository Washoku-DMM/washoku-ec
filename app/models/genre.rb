class Genre < ApplicationRecord
	enum status:{enabled: 0, disabled: 1}
	has_many :products, dependent: :destroy
end
