# CRM - Robot Framework Automation Suite
A simple automation suite for users to interact with a Customer Relationship Management website. This repository contains automated tests, custom libraries, and supporting utilities designed to enable reliable,
readable, and reusable test automation.

---

## Table of Contents

1. [Overview](#overview)
2. [Project Structure](#project-structure)
3. [Getting Started](#getting-started)
4. [Configuration](#configuration)
5. [Running Tests](#running-tests)
6. [Test Results](#test-results)

---

## Overview
This project uses **Robot Framework**, an automation framework with a focus on readability, keyword‑driven automation, and extensibility.

This suite allows an unauthenticated user to:
- Navigate to the homepage
- Sign In
- Add a new customer
- Sign Out

---

## Project Structure

- **Project**
  - **Resources** - contains project keywords
    - **PO** - page‑specific keywords
      - AddCustomer.robot
      - Customers.robot
      - Home.robot
      - LoggedOut.robot
      - SignIn.robot
      - TopNav.robot
    - Common.robot - keywords common across applications
    - CrmApp.robot - CRM site-specific keywords
  - **Results** - generated logs, outputs, reports, screenshots
    - **batch** - batch files that can be run against command line
      - win11chrome
      - win11edge
      - win11firefox
  - **Tests**
    - Crm.robot - Main test file with variables for browser and search term

---

## Getting Started
Prerequisites:
- Python
- PIP
- Robot Framework
- Selenium Library
- Chrome, Firefox & Edge browsers
- Chrome, Firefox & Edge Webdrivers
- PyCharm IDE (or an IDE of your choice)

Recommended PyCharm Plug-ins:
- Hyper RobotFramework Support

---

## Configuration
There are 4 variables that can be set:
- ${BROWSER_TYPE} = Your choice of browser
- ${START_URL} = This **must** be set to https://automationplayground.com/crm/
- ${VALID_LOGIN_EMAIL} - This can be set to anything, as long as it uses a valid email format
- ${VALID_LOGIN_PASSWORD} - This can be set anything

---

## Running Tests
Run all tests in PyCharm and have logs appear in the 'Results' directory:
- robot -d results Tests/Crm.robot 

Alternatively, you can also run the tests using Powershell by running the following command in your project directory:
- robot -d results -v VALID_LOGIN_EMAIL:test@test.com -v VALID_LOGIN_PASSWORD:qwerty Tests/Crm.robot

---

## Test Results
**Robot Framework** automatically generates:
- log.html
- report.html
- output.xml

These are stored in the **Results** directory.

There are also three batch files stored in 'Results > batch', each with their own logs. These can be run against the command line using File Explorer.
