if RUBY_ENGINE == 'opal'
  require "react.js"
  require "reactive-ruby/top_level"
  require "reactive-ruby/component"  
  require "reactive-ruby/element"
  require "reactive-ruby/event"
  require "reactive-ruby/version"
  require "reactive-ruby/api"
  require "reactive-ruby/validator"
  require "reactive-ruby/observable"
  require "reactive-ruby/rendering_context"
  require "reactive-ruby/state"
  require "reactive-ruby/isomorphic_helpers"
  
  if React::IsomorphicHelpers.on_opal_client? # does not work yet so these must be included in application.rb
    #require      "jquery"
    #require      "opal-jquery"
    #require      "browser"
  end
  
else
  require "opal"
  require "opal-browser"
  require "reactive-ruby/version"
  require "opal-activesupport"
  require "rails-helpers/react_component"
  require "reactive-ruby/isomorphic_helpers"
  require "reactive-ruby/serializers"

  Opal.append_path File.expand_path('../', __FILE__).untaint
  Opal.append_path File.expand_path('../../vendor', __FILE__).untaint
end