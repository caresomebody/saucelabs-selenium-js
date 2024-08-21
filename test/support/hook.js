const { Before, After, AfterAll, BeforeStep } = require("@cucumber/cucumber");
const { initializeDriver } = require("../helper/helperBrowser");

const browserName = process.env.BROWSER_NAME || "chrome";
console.log(`Initializing driver for browser: ${browserName}`);
let driver;

Before(async function (scenario) {
  driver = await initializeDriver(browserName);
  global.driver = driver;
  console.log(`Starting scenario: ${scenario.pickle.name}`);
});

After(async function (scenario) {
  if (scenario.result.status === "failed") {
    console.log(`Scenario failed: ${scenario.pickle.name}`);
  }
  if (driver) {
    await driver.quit();
  }
});

AfterAll(async function () {
  console.log("All scenarios have finished running");
});
