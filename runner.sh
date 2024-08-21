export BROWSER_NAME=chrome
TAG="@inventory-4"

# npm test
npx cucumber-js ./test/features --require ./test --tags "$TAG"
node reporterConfig.js
