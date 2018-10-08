# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :assets
  has_many :examples
  has_many :transactions
end
