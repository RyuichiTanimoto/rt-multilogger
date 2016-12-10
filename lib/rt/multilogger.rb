#
#  multilogger.rb
#  rt-multilogger
#
#  Created by Ryuichi Tanimoto on 12/10/16
#  Copyright (c) 2016 Ryuichi Tanimoto. All rights reserved.
#

require 'rt/multilogger/version'
require 'logger'

module RT
  class MultiLogger
    def initialize *args
      @stdout = Logger.new STDOUT
      @log = Logger.new(*args)
    end
    %w(fatal error warn info debug).each do |level|
      define_method level do |args|
        [@stdout, @log].all? do |output|
          output.send level, *args
        end
      end
    end
  end
end
