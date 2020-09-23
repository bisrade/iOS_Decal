//
//  DrummerViewController.swift
//  Drummer
//
//  Created by David Xiong on 2/14/19.
//  Copyright © 2020 iosdecal. All rights reserved.
//

import UIKit

class DrummerViewController: UIViewController {

    // Our DrumKit models as an instance of the object
    
    // Drum Kit 0 (Acoustic Drum Kit)
    let drumKit0 = DrumKit(drumKitID: 0)
    // Drum Kit 1 (Electronic Drum Kit)
    let drumKit1 = DrumKit(drumKitID: 1)
    
    // The currently selected drum kit (default = 0)
    var currentDrumKit: DrumKit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // sets the default drum kit to drumkit0
        currentDrumKit = drumKit0
    }
    
    
    // YOUR CODE HERE
    
    @IBAction func button0(_ sender: UIButton) {
        
        switch sender.tag {
            
            case 0:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 0)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 0)
                }
            case 1:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 1)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 1)
                }
            case 2:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 2)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 2)
                }
            case 3:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 3)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 3)
                }
            case 4:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 4)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 4)
                }
            case 5:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 5)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 5)
                }
            case 6:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 6)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 6)
                }
            default:
                if let d = currentDrumKit {
                    d.playDrumSound(forDrumWithTag: 1)
                } else {
                    drumKit0.playDrumSound(forDrumWithTag: 1)
                }
            
            
        }
        
    }
    

    
    @IBAction func DrumKitWasChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
            case 0:
                currentDrumKit = drumKit0
            case 1:
                currentDrumKit = drumKit1
            default:
                currentDrumKit = drumKit0
            
        }
    }
    
}

