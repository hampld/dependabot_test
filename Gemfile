# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in scout_storage.gemspec
gemspec

activemodel_version = ENV["ACTIVEMODEL_VERSION"] || "default"
gem "activemodel", case activemodel_version
                   when "default"
                     ">= 6.1"
                   else
                     "~> #{activemodel_version}"
                   end
