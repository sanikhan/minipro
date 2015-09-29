class Customer < ActiveRecord::Base
has_many :products,  :through => :order
end
