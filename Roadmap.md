# Codesake Dawn - roadmap

Codesake::Dawn is a static analysis security scanner for ruby written web applications.
It supports [Sinatra](http://www.sinatrarb.com),
[Padrino](http://www.padrinorb.com) and [Ruby on Rails](http://rubyonrails.org)
frameworks. 

This is an ongoing roadmap for the Codesake::Dawn source code review tool.

_latest update: Fri Jan 17 08:09:29 CET 2014_

## Version 1.1.0

* CVE-2014-1234
* CVE-2014-1233
* CVE-2013-5671
* CVE-2013-4593
* CVE-2013-4489
* CVE-2013-4413
* CVE-2013-2516
* CVE-2013-2513
* CVE-2013-2512
* CVE-2013-1607
* CVE-2013-0262
* CVE-2013-0184
* CVE-2013-0183
* CVE-2012-6109
* CVE-2011-5036
* CVE-2007-6183
* move is\_vulnerable\_version? and is\_vulnerable\_patchlevel? to an adhoc
  class handling version comparison
* add @rubysec vulnerability database integration using rake
* create a task to check for new CVE in NVD website
* add a language check. It will handle a ruby script as input and a
  ruby\_parser line as unsafe pattern. It will compile the ruby and look for
  the unsafe pattern
* add a check against deprecated ruby / gems version. I will handle MVC gems
  right now.
* Improving HTML output as described in issue #7
* Add a --github option to Codesake::Dawn to clone a remote repository, perform
  a bundle install and do a code review.
* Add support for github hooks
* Add a ruby deprecation check, accordingly to https://bugs.ruby-lang.org/projects/ruby/wiki/ReleaseEngineering
* Add a severity attribute to basic check. It must be calculated automatically
  on the cvss_score or it may be overriden upon check creation.
* Better bin/dawn script output formatting using some library like PrettyPrint
  (this can involve a change in codesake-commons package).

## Version 1.2.0

* adding test for RoRCheatSheet\_2
* adding test for RoRCheatSheet\_3
* adding test for RoRCheatSheet\_5
* adding test for RoRCheatSheet\_6
* adding test for RoRCheatSheet\_9
* adding test for RoRCheatSheet\_10
* adding test for RoRCheatSheet\_11
* adding test for RoRCheatSheet\_12
* adding test for RoRCheatSheet\_13
* adding test for RoRCheatSheet\_14
* adding test for RoRCheatSheet\_15
* adding test for RoRCheatSheet\_16
* preliminary javascript support
* adding test for CVE-2011-4969  XSS in jquery < 1.6.2 

## Version 1.5.0

* add support for pure Rack applications
* detect stored XSS in Rails applications
* detect reflected XSS in Rails applications
* detect insecure direct object reference in Rails applications
* detect SQLi in Sinatra applications
* detect SQLi in Padrino applications
* detect sinks for XSS in Padrino applications
* detect reflected XSS in Padrino applications
* detect stored XSS in Sinatra applications
* detect stored XSS in Padrino applications
* detect insecure direct object reference in Sinatra applications
* detect insecure direct object reference in Padrino applications
* support ERB for in detect\_views (for both Sinatra and Padrino)
* detect SQLi in Rails applications
* automatic mitigation patch generation 


## Version 2.0.0
* node.js support
* SQLite3 integration for saving data. Each project will have its own SQLite
  database containing reviews, findings and all. A table with Codesake::Dawn version it
  created the database will be inserted as well
