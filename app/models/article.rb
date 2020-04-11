# frozen_string_literal: true

class Article < ApplicationRecord

  belongs_to :user

  has_many :ac_links
  has_many :categories, through: :ac_links

  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 8 }
  validates :user_id, presence: true
end
