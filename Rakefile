# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'rubygems'
require 'motion-pixatefreestyle'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Ruby Knowledge Test'
  app.version = '0.1.0'
  app.interface_orientations = [:portrait]
  app.icons << 'icon.png'

  app.frameworks += [ 'CoreData' ]
  app.pixatefreestyle.framework = 'vendor/PixateFreestyle.framework'
end

task :"build:simulator" => :"schema:build"
