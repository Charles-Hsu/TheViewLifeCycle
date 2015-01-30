//
//  ViewController.swift
//  TheViewLifeCycle
//
//  Created by Charles Hsu on 1/30/15.
//  Copyright (c) 2015 Loxoll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    println("viewDidLoad")
    
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "stopRunning", name: kApplicationDidEnterBackgroundNotificationKey, object: nil)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    println("didReceiveMemoryWarning")
  }

  override func viewWillDisappear(animated: Bool) {
    println("viewWillDisappear")
  }
  
  override func viewDidDisappear(animated: Bool) {
    println("viewDidDisappear")
  }
  
  override func viewWillAppear(animated: Bool) {
    println("viewWillAppear")
  }
  
  override func viewWillLayoutSubviews() {
    println("viewWillLayoutSubviews")
  }
  
  override func viewDidLayoutSubviews() {
    println("viewDidLayoutSubviews")
  }
  override func viewDidAppear(animated: Bool) {
    println("viewDidAppear")
  }
  
  func stopRunning() {
    println("stopRunning()")
  }

}

