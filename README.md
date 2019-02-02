**Prerequisites:** <br />
Ruby, JDK and Firefox are installed on your system. <br />
`$JAVA_HOME` path is configured

**If you don't have cucumber and bundler gems, please run following commands in Terminal:** <br />
```sh
sudo gem install cucumber
sudo gem install -n /usr/local/bin bundler
```

**From main project folder (swedish_furniture_parts) run following commands:** <br />
```sh
bundle install --force
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
