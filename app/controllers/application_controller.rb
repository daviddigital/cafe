class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token #before executing, skip auth token. only for testing/DEV
end
