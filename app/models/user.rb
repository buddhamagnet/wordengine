class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  # Nullify is the default, we make it explicit here to make it
  # known that when we delete a user, their stories and poems
  # remain.
  has_many :stories, dependent: :nullify
  has_many :fragments, dependent: :nullify
  has_many :poems, dependent: :nullify
end
