TDD

Rspec
Capybara
Factory girl

Background Jobs:
-----------------
install redis: gem install redis
sidekiq: gem sidekiq

redis server: redis-server

sidekiq web: routes.rb

require sidekiq/web
mount Sidekiq::Web => /sidekiq

Generate worker in app directory

genrate background jobs
add to methods

Worker.perform_async()

Exit
