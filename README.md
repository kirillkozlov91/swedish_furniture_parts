swedish_furniture_parts project

If you don't have cucumber and bundler, please run in Terminal following commands:
sudo gem install cucumber
sudo gem install bundler

In Terminal cd to main project folder (where project was downloaded to your machine)

From main project folder (swedish_furniture_parts) run following commands:
bundle install
cucumber -p all_tests

List of existing profiles:
cucumber -p all_tests
cucumber -p home_page
cucumber -p header
cucumber -p search_page
cucumber -p checkout