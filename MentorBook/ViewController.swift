//
//  ViewController.swift
//  MentorBook
//
//  Created by 藤田佳己 on 2020/05/11.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
         mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
         mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
         mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "webS,webD"))
        
        setUI()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }

    @IBAction func mae() {
        index = index - 1
        setUI()
    }
    
    @IBAction func tugi() {
        index = index + 1
        setUI()
    }
    
    
}

