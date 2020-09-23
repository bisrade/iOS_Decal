//
//  PostToThreadViewController.swift
//  Snapagram
//
//  Created by Beatriz Israde on 3/21/20.
//  Copyright © 2020 iOSDeCal. All rights reserved.
//

import UIKit

class PostToThreadViewController: UIViewController {
    
    @IBOutlet weak var postingToThread: UILabel!
    var imageDisplayed: UIImage!
    @IBOutlet weak var imageToPost: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.imageToPost.image = imageDisplayed
//        postingToThread.text = "Posting To Thread"
//        postingToThread.backgroundColor = .blue
//        postingToThread.textColor = .black
    }
    
    
    @IBAction func threadButtonPressed(_ sender: UIButton) {
        
        
        
        let entry = ThreadEntry(username: feed.username, image: imageDisplayed)
        feed.threads[sender.tag].addEntry(threadEntry: entry)
        
        postingToThread.text = "POSTED ✅"
        
        
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
