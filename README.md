# Rails from scratch

I haven't created a brand new rails application from scratch in quite a long
time. This is my attempt at creating a new rails app with the intention of
setting up a basic app with authentication, and trying out some new Rails
features.

## The beginning

Set up a new [Ruby on Rails][] application with [PostgreSQL][] and [Stimulus][]

    rails new rails-from-scratch --webpack=stimulus -T -d postgresql

Add [RSpec][], because that is the test framework I like.

![Run Specs](https://github.com/eddanger/rails-from-scratch/workflows/Run%20Specs/badge.svg)

Setup [Github Actions] to run the test suite workflow on each push to Github. See this app's [workflow setup](https://github.com/eddanger/rails-from-scratch/blob/master/.github/workflows/specs.yml).

Add [Tailwind CSS] for simple basic styles without fighting.

[Ruby on Rails]: https://rubyonrails.org/
[RSpec]: https://rspec.info/
[PostgreSQL]: https://www.postgresql.org/
[Stimulus]: https://stimulusjs.org/
[Github Actions]: https://github.com/features/actions
[Tailwind CSS]: https://tailwindcss.com
