# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :examples
  has_many :assets
  has_many :transactions
end
