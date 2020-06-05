# Rails from scratch

I haven't created a brand new rails application from scratch in quite a long
time. This is my attempt at creating a new rails app with the intention of
setting up a basic app with authentication, and trying out some new Rails
features.

![Run Specs](https://github.com/eddanger/rails-from-scratch/workflows/Run%20Specs/badge.svg)

## The beginning

Set up a new [Ruby on Rails] application with [PostgreSQL] and [Stimulus]

    rails new rails-from-scratch --webpack=stimulus -T -d postgresql

## The basics

Add [RSpec], because that is the test framework I like.

Setup [Github Actions] with caching to run the test suite workflow on each push to Github. See this app's [workflow setup](https://github.com/eddanger/rails-from-scratch/blob/master/.github/workflows/specs.yml) to get an idea of how the continuous integration runs after each push to `master`.

Add [Tailwind CSS] for simple basic styles without fighting.

Add [Devise] authentication so I can have user log in!

Add [ViewComponent] for building view components that are reusable, testable & encapsulated, in Ruby on Rails.

[Ruby on Rails]: https://rubyonrails.org/
[RSpec]: https://rspec.info/
[PostgreSQL]: https://www.postgresql.org/
[Stimulus]: https://stimulusjs.org/
[Github Actions]: https://github.com/features/actions
[Tailwind CSS]: https://tailwindcss.com
[Devise]: https://github.com/heartcombo/devise
[ViewComponent] https://github.com/github/view_component

## Dockerize this app

Docker Compose to set up and run a Rails/PostgreSQL app.
This will help get the app up and running on different development machines as well as packacking up this app for smooth deploys.

        docker-compose build
        docker-compose run web rails db:setup
        docker-compose up

## Deploy to Heroku

https://rails-from-scratch.herokuapp.com

Using the Docker image we created (and updated with `docker-compose build`) we can now deploy to [Heroku].
This app is on the Free plan and will go to sleep after 30 minutes, so it may take a while to wake up.

        heroku container:push web -a rails-from-scratch
        heroku container:release web -a rails-from-scratch
        heroku run rake db:migrate -a rails-from-scratch

[Heroku]: https://heroku.com