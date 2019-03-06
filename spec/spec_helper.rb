##
## spec_helper.rb
## Login : <lta@still>
## Started on  Wed Jun 12 14:07:00 2013 Lta Akr
## $Id$
##
## Author(s):
##  - Lta Akr <>
##  Edited by
##  - Emmanuel Derozin <emmanueldd>
##
## Copyright (C) 2013 Lta Akr

EXERCICES_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..', 'exos'))
CORRECTION_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..', 'correction'))
$: << EXERCICES_PATH << CORRECTION_PATH

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "1234"

  # # Syntactic sugar
  # config.alias_example_to :they
  # config.alias_example_to :there
end
