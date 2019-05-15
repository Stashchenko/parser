# Task
1. Write a ruby script that (ruby_app):    
    * a. Receives a log as argument (webserver.log is provided) e.g.: ./parser.rb webserver.log’
    * b. Returns the following:
        * list of webpages with most page views ordered from most pages views to less page views e.g.:
            * `/home 90 visits /index 80 visits etc...` 
        * list of webpages with most unique page views also ordered e.g.:
            * `/about/2 8 unique views /index 5 unique views etc...`

    Run:
     * Result `ruby parser.rb webserver.log`
     * Tests `rspec`
     
 
# TODO
* Add uniq result output from web_page_repository.rb, some DTO 
* Add "FactoryBot" gem
* Add more unit tests
* ? Add ability to filters some log on the beginning of parsing file * 


# Code analysis
## Rubocop code inspection

Run in cmd: `rubocop`

## RubyCritics
Run in cmd: `rubycritic`
        
 
