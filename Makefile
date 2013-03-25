
default: copy cordovajs

# Copy assets
copy: 
	rm -rf android/assets/www/*
	rm -rf ios/www/*
	cp -R common/* android/assets/www
	cp -R common/* ios/www

# Copy cordova.js for different platforms
cordovajs: 
	cp -R misc/cordova-ios.js ios/www/cordova.js
	cp -R misc/cordova-android.js android/assets/www/cordova.js



.PHONY: copy cordovajs
