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
     * Tests `rspec` -> `All Files (98.51% covered at 2.03 hits/line)` 
     
     
     
# Result
```
====Most page views ===
[/about/2] 90 visits
[/contact] 89 visits
[/index] 82 visits
[/about] 81 visits
[/help_page/1] 80 visits
[/home] 78 visits

==== Unique views ===
[/help_page/1] 23 unique views
[/contact] 23 unique views
[/home] 23 unique views
[/about/2] 22 unique views
[/index] 23 unique views
[/about] 21 unique views
```
# TODO
* Add uniq result output from `web_page_repository.rb`, e.g. some DTO instead of hash
* Split logic of getting file and parsing
* Extract transform_result from `web_page_repository`  
* Add "FactoryBot" gem in order to created WebPage dummy data
* Add more unit tests
* ? Add ability to filters some log on the beginning of parsing file 


# Code analysis
## [Rubocop](https://github.com/rubocop-hq/rubocop)

Run in cmd: `rubocop`

Result: `10 files inspected, no offenses detected`

## [RubyCritics](https://github.com/whitesmith/rubycritic)
Run in cmd: `rubycritic`
    
Result: `Score: 95.37`

## [fasterer](https://github.com/DamirSvrtan/fasterer) 
Run in cmd: `fasterer`

Result: `9 files inspected, 0 offenses detected`

        
 
