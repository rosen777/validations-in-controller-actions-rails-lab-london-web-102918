class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
end

Author.create(name: "Stephen King").valid? # => true
Author.create(name: nil).valid? # => true
