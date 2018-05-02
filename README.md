# Ruby on Rails Tutorial sample application

This is the reference implementation of the sample application for the 4th edition of [*Ruby on Rails Tutorial: Learn Web Development with Rails*](http://www.railstutorial.org/) by [Michael Hartl](http://www.michaelhartl.com/).

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/) is available jointly under the MIT License and the Beerware License. See [LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ cd /path/to/repos
$ git clone https://bitbucket.org/railstutorial/sample_app_4th_ed.git sample_app_reference
$ cd sample_app_reference
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

To check out the code for a particular chapter, first find the branch name using

```
$ git branch -a
```

A branch called `remotes/orgin/foo-bar` can be checked out using `git checkout foo-bar`.

Next, copy the contents of the `Gemfile` using a text editor and then use

```
$ git checkout chapter-branch-name
```

to check out the chapter branch. Finally, copy the contents into the `Gemfile` and run

```
$ bundle update
```

At this point, the branch should be working. (You have to copy the `Gemfile` contents because it's incredibly hard to keep all branches up-to-date, so only the main one is guaranteed to be current.)

For more information, see the
[*Ruby on Rails Tutorial* book](http://www.railstutorial.org/book).
