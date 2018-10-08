#!/bin/bash

curl "http://localhost:4741/assets" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "asset": {
      "name": "'"${NAME}"'",
      "amount": "'"${AMOUNT}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
