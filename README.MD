# _Word Fun_

#### _Website to help children learn word definitions, 12/20/2019_

#### By _**Drew Peterson**_

## Description

_This Website is to make learning fun: children will write up a list of words they don't know (but would like to learn) and then come up with their own definitions._

## Behavior Driven Development

| Behavior | Input Example | Output Example |
| - | - | - |
| User can enter a word | "landscape" | "landscape" displays |
| User enters a list of words | "Exposition", "Indent", "Circumvent" | "Exposition", "Indent", "Circumvent" displays |
| User can add words to a list | "Jovial" input | Jovial added to list |
| User can update words to a list | "Jovial" changed to "Somber"| "Jovial" is replaced in list with "Somber" |
| User can delete words from the list | "Somber" is deleted | Jovial added to list |
| User can add words to a list | "Jovial" input | "Somber" not longer show in word list |
| User can add definitions to each word | exposition, indent and circumvent definitions input | exposition, indent and circumvent definitions appear for the corresponding words |
| User can add multiple definitions to each word | "Somber" input two definitions | clicking on "Somber" shows two definitions |
| User can update definitions on the list | "Somber" edit 2nd definition | "Somber" 2nd definition shows new definition |
| User can delete definitions on the list | "Somber" click to delete 2nd definition | "Somber" 2nd definition is removed |




## Setup/Installation Requirements

* Ensure that you have the correct version of Ruby installed
* Clone the project locally from github.
* Install Bundler if you do not already have it by running gem install bundler in the terminal.
* Run bundle install to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.



## Known Bugs

_There are no known bugs at this time._

## Support and contact details

_Please contact me directly via email at drew.a.peterson@hotmail.com with any bug reports, questions, critique, or for any reason._

## Technologies Used

_Ruby 2.5.1 with rspec and pry gems and Bundler, Sinatra_

### License

*GPL*



Copyright (c) 2019 **_Drew Peterson_**
