class Product < ActiveRecord::Base
has_many :suppliers
has_many :customers
end
