ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  parallelize(workers: :number_of_processors)
  fixtures :all
end

class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def log_in_as(usuario, password: "123456")
    post usuario_session_path, params: {
      usuario: {
        email: usuario.email,
        password: password
      }
    }
    follow_redirect!
  end
end
