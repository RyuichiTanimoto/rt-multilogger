#
#  multilogger_test.rb
#  rt-multilogger
#
#  Created by Ryuichi Tanimoto on 12/10/16
#  Copyright (c) 2016 Ryuichi Tanimoto. All rights reserved.
#

require 'test_helper'

class RT::MultiLoggerTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RT::MultiLogger::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
