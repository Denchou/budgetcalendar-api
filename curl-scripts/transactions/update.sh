#!/bin/bash

curl "http://localhost:4741/transactions/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "transaction": {
      "name": "'"${NAME}"'",
      "amount": "'"${AMOUNT}"'",
      "start_date": "'"${START}"'",
      "end_date": "'"${END}"'",
      "frequency": "'"${FREQUENCY}"'",
      "is_income": "'"${INCOME}"'"
    }
  }'

echo
