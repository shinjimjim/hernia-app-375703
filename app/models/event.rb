class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :pain
  belongs_to :stretch
  belongs_to :training
  belongs_to :posture
  belongs_to :meal
  belongs_to :motion
  belongs_to :smoking

  validates :pain_id, numericality: { other_than: 0, message: "が選択されていません。" }

  belongs_to :user
end
