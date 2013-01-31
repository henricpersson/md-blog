# Load the rails application
require File.expand_path('../application', __FILE__)

# Make sure the logger is available for initializers
Rails.logger = Logger.new(STDOUT)

# Initialize the rails application
MdBlog::Application.initialize!
