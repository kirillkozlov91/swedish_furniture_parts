**Prerequisites:** <br />
Ruby and Firefox installed on your system

**If you don't have cucumber and bundler gems, please run following commands in Terminal:** <br />
```sh
sudo gem install cucumber
sudo gem install -n /usr/local/bin bundler
```

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
