# Saucedemo Web Automation with Selenium, Cucumber & Javascript

## Getting started

## Prerequisites

Before setting up and running the UI tests, ensure that you have the following prerequisites installed and configured on your system:

1. **Node.js and npm**:
   - Install Node.js and npm by downloading and installing the latest LTS version from the [official Node.js website](https://nodejs.org/).
   - Verify the installation by running the following commands in your terminal:
     ```bash
     node --version
     npm --version
     ```
2. **IDE or Text Editor**:

   - Choose an Integrated Development Environment (IDE) popular option Visual Studio

3. **Clone the Repository**:
   - Clone the Github repository to your local machine using the following command:
     ```bash
     git clone https://github.com/caresomebody/saucelabs-selenium-js.git
     ```
5. **Install Dependencies**:
   - Navigate to the project directory:
     ```bash
     cd saucelabs-selenium-js
     ```
   - Install the necessary dependencies using npm:
     ```bash
     npm install
     ```

6. **Run the test**:

    - You can run the test using this following command

      ```bash
      sh runner.sh
      ```

    - If you want to run only a specific feature, you can modify line 2 in runner.sh as to the desired tagging of the features. You can found the tagging of a features in line 1 of every .feature file. The path to feature file is in **test/features**
      ```bash
      tags=@saucedemo-test
      ```

7. **Set the browser of the test**:

    - Before start running the test, you can change the browser that will be used for automation in Line 1 of _runner.sh_, the defaut browser will be Google Chrome
      ```bash
      export BROWSER_NAME=chrome
      ```
