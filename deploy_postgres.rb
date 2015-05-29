    #!/usr/bin/ruby
load "deploy_script.rb"
deploy(:dir => "postgres", :image => "postgres", :host => "188.166.29.77", :c_args => {"ExposedPorts" => { "5432/tcp" => {} }, "PortBindings" => { "5432/tcp" =>[{ "HostPort" => "32769" }] }})