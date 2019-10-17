class Assembly < ActiveRecord::Base
  has_and_belongs_to_many :parts
  accepts_nested_attributes_for :parts, reject_if: proc {|a| a['part_number'].blank?}
end
