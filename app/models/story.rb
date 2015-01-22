class Story < ActiveRecord::Base
  belongs_to :user
  has_many :fragments, dependent: :destroy
end
