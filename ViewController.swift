//
//  ViewController.swift
//  Timer
//
//  Created by Felicia Weathers on 7/29/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var time = 0
    
    func increaseTimer () {
        
        time += 1
        
        timerLabel.text = "\(time)"
        
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func playButtonTapped(sender: UIBarButtonItem) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
                
    }
    
    @IBAction func resetButtonTapped(sender: UIBarButtonItem) {
        
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "\(time)"
        
    }
    
    @IBAction func pauseButtonTapped(sender: UIBarButtonItem) {
        
        timer.invalidate()
        
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

