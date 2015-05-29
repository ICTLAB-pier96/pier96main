    #!/usr/bin/ruby
load "deploy_script.rb"
deploy(:dir => "rails", :image => "gui2", :host => "188.166.29.77", :git_clone => {:name => "rails", :repo => "https://github.com/ICTLAB-pier96/pier96gui.git"}, :c_args => {"ExposedPorts" => { "3000/tcp" => {} }, "PortBindings" => { "3000/tcp" =>[{ "HostPort" => "8080" }] }})