# Fake Reachability for iOS Development

You certainly know the pain when debugging online/offline functionality by turning airport-mode on and off all the time? This tiny package here might help you solve this problem.

It consists of a simple Mac-App and a tuned Reachability.[hm] that observes the Mac Apps desired Online-Offline state. It then acts like the regular Reachability, online that you are in charge and don't need to change your real connectivity on the Device or the Simulator.

Warning: This may explode at any time. Feel free to improve it. 

Licensed under the DWTFYWPL, Do What The Fuck You Want To Public License ( http://sam.zoy.org/wtfpl/COPYING ). 

## Install
Simply drop Reachability.[hm] in your project and set the DEBUG flag. If the DEBUG flag is not set it will behave exactly like the common Reachability. 

The default state is online, and you need the mac app to manually set the state to offline. If you want to hack yourself, you just need to publish a Bonjour-Service called "_fakeoffline._tcp". Simple, huh?