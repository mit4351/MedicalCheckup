class Examinee < ApplicationRecord
  belongs_to :office
  belongs_to :medical
  validates :name, presence:true
end
