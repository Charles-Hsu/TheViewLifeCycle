## TheViewLifeCycle

```
didFinishLaunchingWithOptions
viewDidLoad
viewWillAppear
viewWillLayoutSubviews
viewDidLayoutSubviews
viewWillLayoutSubviews
viewDidLayoutSubviews
viewDidAppear
applicationDidBecomeActive
viewWillDisappear
viewDidDisappear
viewWillAppear
viewDidAppear
applicationWillResignActive
applicationDidEnterBackground
```

# Notification

Add the following code in AppDelegate.swift to post a notification when the app entered into background
```swift
func applicationDidEnterBackground(application: UIApplication) {
  NSNotificationCenter.defaultCenter().postNotificationName(kApplicationDidEnterBackgroundNotificationKey, object: self)
}
```
And in ViewController.swift, add a observer to listen the notification, then call the func soptRunning to stop playing background music.
```swift
override func viewDidLoad() {
  super.viewDidLoad()
  NSNotificationCenter.defaultCenter().addObserver(self, selector: "stopRunning", name: kApplicationDidEnterBackgroundNotificationKey, object: nil)
}
```
# Reference

31 Days of iOS: Day 24–The View Life Cycle http://chrisrisner.com/31-Days-of-iOS--Day-24%E2%80%93The-View-Life-Cycle

31 Days of iOS: Day 25–The Application Life Cycle http://chrisrisner.com/31-Days-of-iOS--Day-25%E2%80%93The-Application-Life-Cycle

Fundamentals of NSNotificationCenter in Swift http://www.andrewcbancroft.com/2014/10/08/fundamentals-of-nsnotificationcenter-in-swift/