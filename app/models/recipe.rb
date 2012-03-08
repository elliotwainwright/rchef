class Recipe < ActiveRecord::Base


  belongs_to :user
  has_many :votes

  # Validations
  validates_presence_of :title
  validates_length_of :title, :minimum => 3

end
