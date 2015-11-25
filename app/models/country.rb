class Country < ActiveRecord::Base
    has_many :strikes
    has_many :targets, through: :strikes
    has_many :relations
    has_many :targets, through: :relations
    # The second has_many :through will overwrite the first
    # If you do @country.targets, it's always going to return the targets through relations
    # Instead, try:
    # has_many :relation_targets, through: :relations, source: :targets
end
