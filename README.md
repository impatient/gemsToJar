*Gems to jar*

Downloads ruby-complete from Maven and builds gems specified in gems.properties into their own jar.

Steps to run:
```
  Put name of gems in gems.properties
  Run gradle -q gemJar
```
The jar with the gems can now be found in dist/libSass.jar (The name can be updated in build.gradle)

To have programmatic access to those jars, can then do:

```bash
  cd dist/
  java -jar jruby* -rlibSass.jar -S irb
```

This will open the ruby shell.  You should then be able to require the necessary gems.

At some point, will include a launcher, so, jruby + gems can be bundled together and run.

To run sass from inside of the ruby shell, the following works.  The example is technically calling compass.

```ruby
  require 'sass'
  require 'sass/exec'
  Sass::Exec::Sass.new(%W(--compass scss/common.scss:cssDir/common.css)).parse

```

Sample code (will not compile) can be found in the sample directory.

