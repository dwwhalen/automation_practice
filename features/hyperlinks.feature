Feature: Hyperlinks

Background:
#Given all browsers are closed
  Given the user opens a browser and navigates to the "Login" page

#Scenario: Forgot Username or Password link
#  When the user selects the "Forgot Password" option
##Then https://www.methodsnow.com/password will be displayed

Scenario: Facebook link
  When the user selects the "Facebook" option
  Then the URL "https://www.facebook.com/travelbusiness" will be displayed

Scenario: Twitter link
  When the user selects the "Twitter" option
  Then the URL "https://twitter.com/phptravels" will be displayed

Scenario: Google Plus link
  When the user selects the "Google Plus" option
  Then the URL "https://plus.google.com/+PHPTRAVELS" will be displayed

Scenario: Contact link
  When the user selects the "Contact" option
  Then the URL "http://phptravels.net/contact-us" will be displayed