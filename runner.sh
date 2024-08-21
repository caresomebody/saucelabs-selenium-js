export BROWSER_NAME=chrome
TAG="@saucedemo-test"

# npm test
npx cucumber-js ./test/features --require ./test --tags "$TAG"
node reporterConfig.js
