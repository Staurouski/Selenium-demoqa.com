require "selenium-webdriver"
require "rspec"
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://demoqa.com/"


	element_link = driver.find_element(:class, 'card-up')
	driver.find_element(:class, 'card-up').selected?
	element_link.click

	element = driver.find_element(id: 'item-1')
	element.click

	element_check_box = driver.find_element(class: 'rct-checkbox')
	element_check_box.click

	element_radio = driver.find_element(id: 'item-2')
	element_radio.click


	element_radio_impressive = driver.find_element(:css, 'div.custom-control:nth-child(3)')
	element_radio_impressive.click

	element_radio_yes = driver.find_element(:css, '.custom-control:nth-child(2) > .custom-control-label')
	element_radio_yes.click


driver.quit
