swedish_furniture_parts project <br />

**If you don't have cucumber and bundler, please run in Terminal following commands:** <br />
```sh
sudo gem install cucumber
sudo gem install -n /usr/local/bin bundler
```

**In Terminal cd to main project folder** (where project was downloaded to your machine) <br />

**From main project folder (swedish_furniture_parts) run following commands:** <br />
```sh
sudo bundle clean --force
bundle install
cucumber -p all_tests
```

**List of existing profiles:** <br />
```sh
cucumber -p all_tests
cucumber -p home_page
cucumber -p header
cucumber -p search_page
cucumber -p checkout
```
