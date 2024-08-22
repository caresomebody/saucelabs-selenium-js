# Saucedemo Web Automation with Selenium, Cucumber & Javascript

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

## Test Report
The report is generated automatically when you run the automation using the following command:
       ```
      sh runner.sh
      ```
The automation report used in this process is the Cucumber HTML Reporter. You can also find the report in the folder **report/cucumber-report.html**. Below is an example of the report output:


![image](https://github.com/user-attachments/assets/d6569052-67a7-446b-a922-03f132ff6c8f)
![image](https://github.com/user-attachments/assets/01581a1b-6561-42bb-adf2-0af9352015f1)
![image](https://github.com/user-attachments/assets/d8359c35-66fd-49c7-9bba-3acfca526ab1)

While running the automation, you can also see the log in command prompt


![image](https://github.com/user-attachments/assets/437e7823-118c-437f-a1c6-ec7527998a7d)

## Automation Process
This is the recording when the automation is running https://youtu.be/omijn8_QtHU
