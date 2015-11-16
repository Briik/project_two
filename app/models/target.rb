class Target < ActiveRecord::Base
    has_many :strikes
    has_many :countries, through: :strikes
    has_many :relations
    has_many :countries, through: :relations
end
