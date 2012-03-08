# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railschef-jpf_session',
  :secret      => '702fdf36adcd33f126f69c1c9412fcb7b051bd5fde4476e1c18c7ea2c7837a167dbb66eb3f69c13aee26211f59038f1508a9f3361f646d588d75e632f2bd9ff5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
