class Relation < ActiveRecord::Base
    belongs_to :country
    belongs_to :target
end
