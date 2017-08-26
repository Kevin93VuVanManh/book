# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(32)       not null
#  url        :string
#  author_id  :string
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ActiveRecord::Base
  belongs_to :category
  belongs_to :author, inverse_of: :books
  accepts_nested_attributes_for :author
  has_one :memo
  accepts_nested_attributes_for :memo
end
