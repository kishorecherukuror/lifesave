class Center < ActiveRecord::Base
	has_many :bgroups, dependent: :destroy
end
