class Memo < ActiveRecord::Base
  belongs_to :books, inverse_of: :book
end
