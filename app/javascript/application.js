// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"
import "@fortawesome/fontawesome-free"

$(document).on("click", ".submit-button", function () {
    $(".modal fade").modal('show');
});
