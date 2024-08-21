const { Given, When, Then } = require("@cucumber/cucumber");
const { Builder, By, Key, until } = require("selenium-webdriver");
const { initializeDriver, openUrl } = require("../helper/helperBrowser");
const {
  findElementByXPath,
  isElementNotVisible,
  fillElement,
  clickElementByXPath,
  getAndCompareText,
} = require("../helper/helperElement");
const { getLocator } = require("../helper/locatorReader");
const assert = require("assert");

Given("User open url {string}", async function (website) {
  console.log(`Step:  User open url "${website}"`);
  await openUrl(driver, website);
});

When("User finds the element {string} displayed", async function (locator) {
  console.log(`Step:  User finds the element "${locator}" displayed.`);
  const xpath = getLocator(locator);
  const element = await findElementByXPath(driver, xpath);
  element.isDisplayed();
  console.log(`Element with locator "${locator}" is displayed.`);
});

When(
  "User finds the element {string} is not displayed",
  async function (locator) {
    console.log(`Step:  User finds the element "${locator}" is not displayed.`);
    const xpath = getLocator(locator);
    const notVisible = await isElementNotVisible(driver, xpath);
    if (!notVisible) {
      throw new Error(`Element with locator "${locator}" is still visible.`);
    }
  }
);

When(
  "User fills element {string} with value {string}",
  async function (locator, value) {
    console.log(`Step:  User fills element "${locator}" with value "${value}"`);
    const xpath = getLocator(locator);
    await fillElement(driver, xpath, value);
  }
);

When("User click element {string}", async function (locator) {
  console.log(`Step:  User click element "${locator}"`);
  const xpath = getLocator(locator);
  await clickElementByXPath(driver, xpath);
});

When("User wait for {int}", async function (int) {
  await driver.sleep(int);
});

When("User login to Saucedemo", async function () {
  console.log(`Step:  User login to Saucedemo`);
  await openUrl(driver, "https://www.saucedemo.com/");
  const xpathEmail = getLocator("login/userNameField");
  const xpathPassword = getLocator("login/passwordField");
  const xpathLogin = getLocator("login/loginBtn");

  await fillElement(driver, xpathEmail, "standard_user");
  await fillElement(driver, xpathPassword, "secret_sauce");
  await clickElementByXPath(driver, xpathLogin);
});

When("User compare value in element {string} match with text {string}", async function (locator,expectedText) {
  console.log(`Step:  User finds the element "${locator}" is not displayed.`);
  const xpath = getLocator(locator);
  await getAndCompareText(driver, xpath, expectedText)
});