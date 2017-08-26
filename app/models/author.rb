class Author < ActiveRecord::Base
  has_many :books, inverse_of: :author
end
