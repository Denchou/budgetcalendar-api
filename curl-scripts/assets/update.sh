#!/bin/bash

curl "http://localhost:4741/assets/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "asset": {
      "name": "'"${NAME}"'",
      "amount": "'"${AMOUNT}"'"
    }
  }'

echo
