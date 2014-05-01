# Welcome to RailsConf 2014!
## Machine Learning for Fun and Profit

Welcome to my workshop! There's a bit of setup required to get the most out of our time, so hopefully you'll have a chance to install the necessary tools before we fight conference or hotel WiFi setups.

## Setup

This talk requires a few gems and other tools you may be unlikely to have handy. 

You'll need

	* SQLite database (any recent version should be fine, including OSX default)
	* Ruby (I'm using 2.1.1 but tested with latest 2.0 and 1.9.3)
	* this github repository
	
You should install the gems<sup>†</sup>

`$ bundle`

_<sup>†</sup>the `linalg` gem needs `gfortran` and `f2c` to be installed._  
On OSX, using homebrew, these dependencies can quickly be satisfied in 3 easy steps: 
```bash 
brew install gfortran
brew pull https://github.com/Homebrew/homebrew/pull/28768 # this formula didn't make it in... yet.
brew install f2c
```

And if you want to run one of the webservices we'll use locally, you'll need

	* a local copy of the repository: https://github.com/fiorix/freegeoip
	* Python (to download the data)
	* Go (to run the server)

There's a public service for this with a 10k/hour request limit. We should be able to use that for the workshop if the WiFi gods smile upon us.

If you install it locally, which I'd recommend, you should follow the README directions for both installation and 'building the IP database'. You do *not* need to install it as a service unless you really, really want to.
	
### Problems

The most likely problems will be with installation of the _linalg_ gem which can require additional dependencies on some Ubuntu versions (at least based on Github issues and Stack Overflow articles) or other tweaks. I found the parallel588 fork the most reliable but if you have trouble with it, you can try the alternative forks in the Gemfile.

### Worries

Its totally fine to just follow along in the code -- you don't have to install anything or run anything locally. We'll go through the code here and you're welcome to experiment later on your own. You should learn something regardless of whether you can run the examples or not.



