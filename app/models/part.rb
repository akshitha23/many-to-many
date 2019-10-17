class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies
  accepts_nested_attributes_for :assemblies, reject_if: proc {|a| a['name'].blank?}
end
