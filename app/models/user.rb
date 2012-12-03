class User < ActiveRecord::Base
  has_many :tweets

  acts_as_dailycred
end
