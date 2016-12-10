#
#  Rakefile
#  rt-multilogger
#
#  Created by Ryuichi Tanimoto on 12/10/16
#  Copyright (c) 2016 Ryuichi Tanimoto. All rights reserved.
#

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test
