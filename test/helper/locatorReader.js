const fs = require("fs");
const yaml = require("js-yaml");

let locators = {};

function loadLocatorsByFile(fileName) {
  try {
    const filePath = `test/element/${fileName}.yml`;
    const fileContents = fs.readFileSync(filePath, "utf8");
    locators[fileName] = yaml.load(fileContents);
  } catch (error) {
    console.error(`Error loading locators from ${fileName}:`, error);
    throw error;
  }
}

function getLocator(fullKey) {
  const [filePrefix, key] = fullKey.split("/");
  if (!filePrefix || !key) {
    throw new Error(`Invalid locator key format: ${fullKey}`);
  }

  if (!locators[filePrefix]) {
    loadLocatorsByFile(filePrefix);
  }

  if (!locators[filePrefix][key]) {
    throw new Error(`Locator not found for key: ${fullKey}`);
  }

  return locators[filePrefix][key];
}

module.exports = { getLocator };
