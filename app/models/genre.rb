class Genre < ApplicationRecord
	enum status:{enabled: 0, disabled: 1}
end
