class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description

  validates :price, numericality: {greater_than: 0, allow_nil: true }
  validates :name, presence: true  

belongs_to :category

after_initialize {} #Item.new, Item.first
after_save {} #sabe or create or update
#after_create {category.inc(:items_count, 1)}
after_update {}
#after_destroy {category.inc(:items_count, -1)} #item.destroy

has_many :positions
has_many :carts, through: :positions

end
