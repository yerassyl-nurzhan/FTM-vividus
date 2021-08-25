Description: This file from task 1

Scenario: Smoke test
Given I am on the main application page
When I refresh the page
When I click on element located `By.xpath(//a[@class="_3Wg53T10KuuPmyWOMWsY2F _2iuoyPiKHN3kfOoeIQalDT _2tU8R9NTqhvBrhoNAXWWcP HNozj_dKjQZ59ZsfEegz8 _2nelDm85zKKmuD94NequP0"])`
When I switch to frame located `By.xpath(//iframe[@class="_25r3t_lrPF3M6zD2YkWvZU"])`
When I enter `BiruriquAdiqufed` in field located `By.xpath(//input[@id="loginUsername"])`
When I enter `Test12345` in field located `By.xpath(//input[@id="loginPassword"])`
When I click on element located `By.xpath(//button[@class="AnimatedForm__submitButton m-full-width"])`
When I switch back to the page
Then field located `By.xpath(//span[@class="_2BMnTatQ5gjKGK5OWROgaG" and contains(text(),'BiruriquAdiqufed')])` exists
When I enter `EPAM` in field located `By.xpath(//input[@id="header-search-bar"])`
When I click on element located `By.xpath(//input[@id="header-search-bar"])`
When I press ENTER on keyboard
Then the page title contains 'EPAM'
When I click on element located `By.xpath(//div[@class="rpBJOHq2PR60pnwJlUyP0"]/div[1])`
Then the page title contains 'EPAM'
When I click on element located `By.xpath(//a[@class="_1x6pySZ2CoUnAfsFhGe7J1"])`
When I click on element located `By.xpath(//button[@class="_3QHhpmOrsIj9Hy8FecxWKa zn4gOEY3isnsK7xZtTvNH jKsK0jQWRidPglQ7Czk8y"])`
When I switch to frame located `By.xpath(//iframe[@id="gtm-db31d1fc-e827-41f8-9555-2d56fe8ac2ed"])`
When I enter `lyssarey` in field located `By.xpath(//input[@class="_2clRIy8wf_7H8xNNrUPaiU"])`
When I check checkbox located by `By.xpath(//circle[@class="_2WDOoyLYNQZODKF6ScpgSO"])`
When I click on element located `By.xpath(//button[@class="_3QHhpmOrsIj9Hy8FecxWKa zn4gOEY3isnsK7xZtTvNH jKsK0jQWRidPglQ7Czk8y"])`
When I enter `Welcome to reddit` in field located `By.xpath(//textarea[@role="textbox"])`
When I click on element located `By.xpath(//button[@class="_3QHhpmOrsIj9Hy8FecxWKa  _1PhPhuhKHqFwivRAkg2DkH t19vywnuK8ouXSeGyGCTh"])`
Then field located `By.xpath(//pre[contains(text(),'Welcome to reddit')])` exists