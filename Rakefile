task :default do
  require_relative 'lib/biometric_password.rb'
  p BiometricPassword.create(num_words: (ENV['WORDS'] || 6).to_i)
end
