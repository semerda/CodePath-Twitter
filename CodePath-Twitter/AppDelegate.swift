//
//  AppDelegate.swift
//  CodePath-Twitter
//
//  Created by Ernest on 10/26/16.
//  Copyright © 2016 Purpleblue Pty Ltd. All rights reserved.
//

import UIKit
//import QuartzCore
import BDBOAuth1Manager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var mask: CALayer?
    var imageView: UIImageView?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        /*
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let imageView = UIImageView(frame: self.window!.frame)
        imageView.image = UIImage(named: "twitterscreen")
        self.window!.addSubview(imageView)
        self.mask = CALayer()
        self.mask!.contents = UIImage(named: "twitter-logo-mask")!.cgImage
        self.mask!.contentsGravity = kCAGravityResizeAspect
        self.mask!.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.mask!.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.mask!.position = CGPoint(x: imageView.frame.size.width/2, y: imageView.frame.size.height/2)
        
        // Starting from Xcode7, iOS9 requires all UIWindow must have a rootViewController
        let emptyView = UIViewController()
        self.window?.rootViewController = emptyView
        
        imageView.layer.mask = mask
        self.imageView = imageView
        
        animateMask()
        
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor(red: 70/255, green: 154/255, blue: 233/255, alpha: 1)
        self.window!.makeKeyAndVisible()
        //UIApplication.sharedApplication.statusBarHidden = true
        */
        
        if User.currentUser != nil {
            print("There is a current user")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "TweetsNavigationController") // bypass login since we are already logged in
            UIView.transition(with: self.window!, duration: 0.5, options: UIViewAnimationOptions.transitionCrossDissolve, animations: {
                self.window?.rootViewController = vc
            }, completion: nil)
        } else {
            print("There is no current user")
        }
        
        // For when we log out
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: User.userDidLogoutNotification), object: nil, queue: OperationQueue.main, using: { (Notification) -> Void in
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateInitialViewController() // Go back to initial vc
            UIView.transition(with: self.window!, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: {
                self.window?.rootViewController = vc
            }, completion: nil)
        })
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    func application(_ app: UIApplication,
                     open url: URL,
                     options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        print("url.description: \(url.description)")
        
        TwitterClient.sharedInstance.handleOpenUrl(url: url)
        
        return true
    }
    
    /*
    func animateMask() {
        let keyFrameAnimation = CAKeyframeAnimation(keyPath: "bounds")
        //keyFrameAnimation.delegate = self
        keyFrameAnimation.duration = 1
        keyFrameAnimation.beginTime = CACurrentMediaTime() + 1 //add delay of 1 second
        let initalBounds = NSValue(cgRect: mask!.bounds)
        let secondBounds = NSValue(cgRect: CGRect(x: 0, y: 0, width: 90, height: 90))
        let finalBounds = NSValue(cgRect: CGRect(x: 0, y: 0, width: 1500, height: 1500))
        keyFrameAnimation.values = [initalBounds, secondBounds, finalBounds]
        keyFrameAnimation.keyTimes = [0, 0.3, 1]
        keyFrameAnimation.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut), CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)]
        self.mask!.add(keyFrameAnimation, forKey: "bounds")
    }
    
    func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        self.imageView!.layer.mask = nil //remove mask when animation completes
    }
     */
}

