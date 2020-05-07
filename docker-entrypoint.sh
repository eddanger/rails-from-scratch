#!/bin/bash
set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

rake db:migrate

RAILS_ENV=production rails assets:precompile

exec bundle exec "$@"
