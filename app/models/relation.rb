class CreateRelation < ApplicationRecord
  belongs_to :group
  belongs_to :entity
end
