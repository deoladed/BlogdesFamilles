# frozen_string_literal: true

class AddAssocToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :user, foreign_key: true
  end
end
