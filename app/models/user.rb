# frozen_string_literal: true

class User < ApplicationRecord
  has_many :articles
  has_many :comments
  has_many :likes
end
