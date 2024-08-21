## option: safari,chrome,firefox
export BROWSER_NAME=chrome

## choose tagging to run, default: @saucedemo-test
TAG="@saucedemo-test"

# npm test
npx cucumber-js ./test/features --require ./test --tags "$TAG"
node reporterConfig.js
