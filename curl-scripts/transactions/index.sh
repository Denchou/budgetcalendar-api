#!/bin/bash

curl "http://localhost:4741/transactions" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
