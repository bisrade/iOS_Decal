//
//  PostToFeedViewController.swift
//  Snapagram
//
//  Created by Beatriz Israde on 3/21/20.
//  Copyright © 2020 iOSDeCal. All rights reserved.
//

import UIKit

class PostToFeedViewController: UIViewController {

    @IBOutlet weak var postButton: UIButton!
    var imageDisplayed: UIImage!
    var dateOfPost: Date!
    @IBOutlet weak var imageToFeed: UIImageView!
    @IBOutlet weak var locationInput: UITextField!
    @IBOutlet weak var captionInput: UITextField!
    @IBOutlet weak var postedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageToFeed.image = imageDisplayed
        // Do any additional setup after loading the view.
        
        //let imageFile = UIImage(named: "snapagram_logo")!
        
        //postButton.setImage(imageFile, for: .normal)
        //postButton.imageView?.contentMode = .scaleAspectFill
        
    }
    

    @IBAction func postButtonPressed(_ sender: Any) {
        
        var postCreated = Post(location: locationInput.text!,
                        image: imageDisplayed,
                        user: feed.username,
                        caption: captionInput.text!,
                        date: Date())
        
        feed.addPost(post: postCreated)
        postedLabel.text = "POSTED ✅"
    
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
