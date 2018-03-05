#!/bin/bash
set -e

if [ "$EMBER_TRY_SCENARIO" ]; then
  node_modules/.bin/ember try:one $EMBER_TRY_SCENARIO --skip-cleanup
fi

if [ "$NODE_TESTS" = "true" ]; then
  npm run nodetest
fi
