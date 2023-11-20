// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require rails-ujs
//= require jquery_ujs
//= require jquery2
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

import "bootstrap"
import "@hotwired/turbo-rails"
import "controllers"
