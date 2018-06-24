# MassMutual_Exercise
MassMutual_Exercise is the solution for the problem that was given as a part of role

## Getting Started
 - Clone or download the project into local git
 - Master branch is the only branch available as of now
 - Need to create a working branch or other local branch for additional development/testing 

### Prerequisities
 - Install Ruby -Latest version
 - Install editor RubyMine version - 2018.1.3
 - Install chromedriver - chromedriver_win32
 - Install testgen, bundler gems which gets Cucumber for project
 - Install gems for the Cucumber project

#### Examples
 - Ruby version - 2.5.1-1-x64 including devkit
 - RubyMine version - 2018.1.3
 - Chromedriver - chromedriver_win32
 - Gems - rspec, watir, rubygems,page-object

### Installing
 - Download the Ruby version and accept all defaults, make sure to check the box for add Ruby executables to your Path
 - Open the command prompt and type ruby -v to check the version once the installation is done
 - Download RubyMine and accept all defaults

## Running the tests
 - Exercise.feature file has all the scenarios that were asked to automate
 - Run on the feature file to run all scenarios and results are imported into an html file

### Break down into tests 
 - **Exercise.feature file has 5 scenarios**
   - Verify count of the amounts on the screen
   - Verify the values on the screen are greater than zero for all amount fields
   - Verify the total balance is correct based on the values listed on the screen
   - Verify the values are formatted as currencies
   - Verify the total balance matches the sum of values
  
### And coding style tests
  - Exercise.feature file uses different cucumber scenarios to validate the objectives
    - **Feature file has background step which runs as common step for all scenarios**
    - **Feature file has Scenario outline which runs the same validations for different test data i.e, all amount fields**
    - **Feature file has Scenario inline table which validates multiple fields on the same step**
    
### Supporting methods and files
  - Project has two important files for execution env.rb and hooks.rb
    - Env.rb makes all the page objects available to the class using world method
     - World method is default as soon as the cucumber project is installed
     - Savescreenshot method is included in the env.rb so that this method can be used whenever screenshot has to be taken
        in the middle of the steps
    - Hooks.rb has the steps that are executed before and after the scenarios
      - Time stamp has been added before scenario so that start time of the execution can be tracked
      - After step method has screen shot method so that screen shot will be taken after every step
  - Exercise_report.html is the final report after the execution
    - Exercise_report.html has all the features that are executed with scenario wise along with how many scenarios have been executed
       - Number of steps/scenarios passed/failed
       - Time taken to run all the scenarios
       - All the scenarios can be expaned or collapsed
       - Screen shots are embedded in the html report
       - **Sample report has been loaded into the project**
       
## Built With
  - Cucumber - Creating tests
  - Ruby - Programming language
  - Watir - Web Driver
 
## Author
 - Sai Mallikarjun Vempati - Complete problem
    
