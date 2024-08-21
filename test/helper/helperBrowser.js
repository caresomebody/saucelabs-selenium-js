const { Builder, By, Key } = require('selenium-webdriver');
const chrome = require('selenium-webdriver/chrome');
const firefox = require('selenium-webdriver/firefox');
const safari = require('selenium-webdriver/safari');

async function initializeDriver(browserName) {
    console.log(`Initializing driver for browser: ${browserName}`)
    let options;
    switch (browserName.toLowerCase()) {
      case 'firefox':
        options = new firefox.Options();
        break;
      case 'safari':
        options = new safari.Options();
        break;
      case 'chrome':
      default:
        options = new chrome.Options();
        break;
    }
  
    const driver = await new Builder()
      .forBrowser(browserName)
      .setChromeOptions(options)
      .build();
    
    return driver;
  }

async function openUrl(driver, url) {
  await driver.get(url);
}

module.exports = { initializeDriver, openUrl };