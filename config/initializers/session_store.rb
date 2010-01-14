# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nodeny_session',
  :secret      => '3c6be29701bdcff569b462ed4f7cded5df541265d13a0258950eac1a20ae225bb8e9eeac4ae82158192005b1f0cdbff99ee617d64369c7c616a5050ccd9831d5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
