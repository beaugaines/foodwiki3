class Product < ActiveRecord::Base
  belongs_to :company
  has_many :components
  delegate :name, to: :company, prefix: true
  accepts_nested_attributes_for :components,
    reject_if: :all_blank, allow_destroy: true
end
