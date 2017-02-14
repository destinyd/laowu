# Be sure to restart your server when you modify this file.

Laowu::Application.config.session_store :cookie_store, key: '_laowu_session', :domain => :all
# Laowu::Application.config.session_store :cookie_store, key: '_laowu_session', :domain => 'laowu.com'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Laowu::Application.config.session_store :active_record_store
