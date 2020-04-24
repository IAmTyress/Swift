//
//  ViewController.swift
//  AppEventCount
//
//  Created by Мас on 29.03.2020.
//  Copyright © 2020 Мас. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    var firstCount = 0
    @IBOutlet weak var willResignActiveLabel: UILabel!
    var secondCount = 0
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    var thirdCount = 0
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    var fourthCount = 0
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    var fifthCount = 0
    @IBOutlet weak var willTerminateLabel: UILabel!
    var sixthCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    func updateUI() {
        didFinishLaunchingLabel.text = "The scene did finish launching \(firstCount) time(s)"
        willResignActiveLabel.text = "The scene will resign active \(secondCount) time(s)"
        didEnterBackgroundLabel.text = "The scene did enter background \(thirdCount) time(s)"
        willEnterForegroundLabel.text = "The scene will enter foreground \(fourthCount) time(s)"
        didBecomeActiveLabel.text = "The scene did become active \(fifthCount) time(s)"
        willTerminateLabel.text = "The scene will terminate \(sixthCount) time(s)"
    }

}

