# Front-End Automation Project with Ruby/Capybara

This is a front-end automation project built using Ruby, Capybara, Cucumber, and other testing libraries. The project uses Ruby 3.2.4 and includes features for generating HTML and JSON reports, as well as a framework for regression testing.

## Prerequisites

Before installing the project, make sure you have the following components installed:

1. *Ruby 3.2.4*:
   - You can check the installed version by running ruby -v.
   - To install Ruby, follow the official instructions: [Ruby Documentation](https://www.ruby-lang.org/en/documentation/installation/).

2. *Bundler* (Ruby dependency manager):
   - Install Bundler by running:  
     bash
     gem install bundler
     

## Installation

1. *Clone the Repository*:
   - Clone this repository to your local machine using Git or download the ZIP file.
   - Example command with Git:  
     bash
     git clone https://github.com/your_username/your_repo_name.git
     

2. *Install Dependencies*:
   - Navigate to the project directory.
   - Install the required Ruby gems by running:  
     bash
     bundle install
     

## Project Structure

- features/: Contains .feature files for Cucumber scenarios.
- reports/: Directory for HTML and JSON reports.
- cucumber.yml: Custom profiles for running specific test configurations.

## Configuration

### Cucumber Profiles

The cucumber.yml file contains the following profiles:

- *web*:  
  Runs tests with the pretty, html_report, and json_report configurations.  
  ```yaml
  web: -p pretty -p html_report -p json_report

### Running Tests

1. Run All Tests:
      cucumber -t @regressive -p web

    2. Tag-Based Execution: 
      cucumber -t @your_specific_tag