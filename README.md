# Primes

Primes is a ruby script that outputs a multiplication table of prime numbers with a user-defined width and height. The script has O(n^2) time complexity where n is the user-defined table width. Fortunately for us, this level of complexity only becomes burdensome (>1s) for an average computer if the script is used to fill a screen of size roughly 10'x 10' using size 12px font.

## Instructions

Follow these steps to run Primes locally:
- Clone this repo locally
- Ensure that you have ruby installed ("brew install ruby")
- Navigate into the directory via terminal
- Enter the command "ruby lib/primes.rb"
- Enter a valid positive number when prompted
- Bask in your beautifully formatted table of prime multiples!


## Tests

For those so inclined, I've included an rspec file that ensures the script is generating valid prime numbers. Follow the below instructions to run the test locally:
- Navigate to the directory
- Ensure you have bundler installed ("gem install bundler")
- Run the command "bundle install"
- Enter the command "be rspec"
- Watch the rspec test pass!
