class Operation < ActiveRecord::Base
  belongs_to :work
  belongs_to :item
end
