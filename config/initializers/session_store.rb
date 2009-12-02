# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_me310-cfp2_session',
  :secret      => '7c0db65fa1bcaf697b2d17eacfba61700a9167cce04a525ab0b951d2bcb52d11e48f01033ac39a1d94a39861bf67fda20a538b446a4aad0925459730ea92697a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
