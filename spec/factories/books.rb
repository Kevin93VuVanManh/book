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

FactoryGirl.define do
  factory :book do
    
  end
end
