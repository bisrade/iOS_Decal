//
//  ThreadOrPostViewController.swift
//  Snapagram
//
//  Created by Beatriz Israde on 3/21/20.
//  Copyright © 2020 iOSDeCal. All rights reserved.
//

import UIKit

class ThreadOrPostViewController: UIViewController {

    var imageToDisplay: UIImage!

    @IBOutlet weak var ImageChosen: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.ImageChosen.image = imageToDisplay
    }
    
    @IBAction func postToThreadsButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toPostToThread", sender: ImageChosen.image)
        
    }
    
    @IBAction func postToFeedButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toPostToFeed", sender: ImageChosen.image)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? PostToThreadViewController, let image = sender as? UIImage {
            
            dest.imageDisplayed = image
            
        }
        
        if let dest = segue.destination as? PostToFeedViewController, let image = sender as? UIImage {
           
            dest.imageDisplayed = image
            
        }
        
        
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
