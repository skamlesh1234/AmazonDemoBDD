from behave import * 
from selenium import webdriver
from selenium.webdriver.common.by import By
import time
@given('user at registation page')
def step_impl(context):
#    context.driver = webdriver.Chrome()
   context.driver.get("https://accounts.google.com/signup")


@when('user enter "{name}" , "{lastname}" credantails it should register')
def step_impl(context , name, lastname):
    context.driver.find_element(By.XPATH, "//input[@name ='firstName']").send_keys(name)
    context.driver.find_element(By.XPATH, "//input[@name ='lastName']").send_keys(lastname)
   

@when('enter click button')
def step_impl(context):
    context.driver.find_element(By.XPATH, "//span[contains(text(),'Next')]").click()
    # Add a wait if necessary to ensure the next page loads before proceeding
    time.sleep(5)

@then('the user should redirected to dashboard')
def step_impl(context):
    context.driver.find_element(By.XPATH, "//span[contains(text(),'Basic information')]").is_displayed() 
    # context.driver.quit()

@then('see a error message')
def step_impl(context):
    if context.driver.find_element(By.XPATH, "//span[contains(text(),'Are you sure you entered your name correctly?')]").is_displayed():
        message = context.driver.find_element(By.XPATH, "//span[contains(text(),'Are you sure you entered your name correctly?')]").text
        assert "Are you sure" in message, "Error message not found"
    else:
        context.driver.implicit_wait(10)
        message = context.driver.find_element(By.XPATH, "//span[contains(text(),'Basic information')]").text
        assert "Basic information" in message, "Message not found"

    
    # context.driver.quit()
