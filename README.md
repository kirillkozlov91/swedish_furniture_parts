swedish_furniture_parts project <br />

**If you don't have cucumber and bundler, please run in Terminal following commands:** <br />
sudo gem install cucumber <br />
sudo gem install -n /usr/local/bin bundler <br />

**In Terminal cd to main project folder** (where project was downloaded to your machine) <br />

**From main project folder (swedish_furniture_parts) run following commands:** <br />
sudo bundle clean --force <br />
bundle install <br />
cucumber -p all_tests <br />

**List of existing profiles:** <br />
cucumber -p all_tests <br />
cucumber -p home_page <br />
cucumber -p header <br />
cucumber -p search_page <br />
cucumber -p checkout <br />
