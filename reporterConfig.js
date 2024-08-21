const reporter = require('cucumber-html-reporter');

const options = {
  theme: 'bootstrap',
  jsonFile: 'allure-results/results.json',
  output: 'report/cucumber-report.html',
  reportSuiteAsScenarios: true,
  launchReport: true,
  brandTitle: 'Cucumber Test Report',
};

reporter.generate(options);
