if RUBY_ENGINE == 'opal'
  require "react/top_level"
  require "react/component" 
  require "react/element"
  require "react/event"
  require "react/version" 
  require "react/element_builder"
else
  require "opal"
  require "react/version"  
  require "opal-activesupport"
  
  Opal.append_path File.expand_path('../', __FILE__).untaint
end