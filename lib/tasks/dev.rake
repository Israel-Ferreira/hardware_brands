# frozen_string_literal: true

namespace :dev do
  task setup: :environment do
    if Rails.env.development?
      rails_commands = ['db:drop', 'db:setup']
      rails_commands.each { |cmd| puts `rails #{cmd}` }
    end
  end
end
