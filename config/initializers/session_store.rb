# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vitaal_session',
  :secret      => 'c1757309efc3d2ec68c3b55a9ef566c507ac24d71ec1c4bfea6c231b93f4028296cea2f12962eec7e0e4d181642b1120f836022706946d8c679cb24477eb1600'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
