class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  layout 'application'
end
