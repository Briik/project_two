class Country < ActiveRecord::Base
    has_many :strikes
    has_many :targets, through: :strikes
    has_many :relations
    has_many :targets, through: :relations
end
