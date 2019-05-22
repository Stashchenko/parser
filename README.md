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
```ruby
c = WepPageController.new(repo, viewer)
c.most_viewed
c.unique_views
c.unique_ips
```
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

==== Calls per ip ===
**Total uniq ip: 23**
[929.398.951.889] 12 calls
[217.511.476.080] 14 calls
[715.156.286.412] 16 calls
[802.683.925.780] 17 calls
[555.576.836.194] 18 calls
[126.318.035.038] 18 calls
[235.313.352.950] 19 calls
[897.280.786.156] 19 calls
[646.865.545.408] 19 calls
[061.945.150.735] 19 calls
[682.704.613.213] 20 calls
[336.284.013.698] 21 calls
[200.017.277.774] 21 calls
[444.701.448.104] 21 calls
[016.464.657.359] 22 calls
[836.973.694.403] 25 calls
[316.433.849.805] 25 calls
[543.910.244.929] 27 calls
[382.335.626.855] 27 calls
[184.123.665.067] 29 calls
[451.106.204.921] 29 calls
[158.577.775.616] 31 calls
[722.247.931.582] 31 calls
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

        
 
