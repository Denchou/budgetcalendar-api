class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :start_date, :end_date, :is_income, :frequency
  has_one :user
end
