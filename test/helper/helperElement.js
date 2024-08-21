const { Builder, By, Key, until } = require("selenium-webdriver");

async function findElementByXPath(driver, xpath) {
  try {
    const element = await driver.findElement(By.xpath(xpath));
    return element;
  } catch (error) {
    console.error(`Error finding element by XPath: ${xpath}`, error);
    throw error;
  }
}

async function clickElementByXPath(driver, xpath) {
    try {
      const element = await driver.findElement(By.xpath(xpath));
      element.click();
      return element;
    } catch (error) {
      console.error(`Error finding element by XPath: ${xpath}`, error);
      throw error;
    }
  }

async function isElementNotVisible(driver, xpath) {
  try {
    const element = await driver.findElement(By.xpath(xpath));
    return !(await element.isDisplayed());
  } catch (error) {
    if (error.name === "NoSuchElementError") {
      return true;
    }
    throw error;
  }
}

async function fillElement(driver, locator, value) {
    try {
      const element = await driver.findElement(By.xpath(locator));
      await element.clear();
      await element.sendKeys(value);
      console.log(`Filled element with locator '${locator}' with value '${value}'`);
    } catch (error) {
      console.error('Error filling element:', error);
      throw error;
    }
  }

  async function getAndCompareText(driver, locator, expectedText) {
    try {
      const element = await findElementByXPath(driver, locator);
      const actualText = await element.getText();
      if (actualText.trim() !== expectedText.trim()) {
        throw new Error(`Expected text '${expectedText}' but got '${actualText}'`);
      }
      console.log(`Text '${actualText}' matches the expected text '${expectedText}'`);
    } catch (error) {
      console.error('Error getting and comparing text:', error);
      throw error;
    }
  }

module.exports = { findElementByXPath, isElementNotVisible, fillElement, clickElementByXPath, getAndCompareText };
