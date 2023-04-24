# Version
ruby 2.6.0
rails 6.0.6

# Now let's add hot-wire into application
gem "hotwire-rails"
# Run 
bundle install

# Then, you’ll install it.
rails hotwire:install

# Install jqury 
yarn add jquery

# Add below line into app/javascript/packs/application.js
require("jquery")

# Add below code into config/webpack/environment.js
const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)
