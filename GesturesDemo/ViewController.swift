//
//  ViewController.swift
//  GesturesDemo
//
//  Created by  on 10/15/20.
//  Copyright © 2020 HobbesApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myIV: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func IVTapped(_ sender: UITapGestureRecognizer)
    {
        print ("Spiderman Tapped")
    }
    @IBAction func emojiPanned(_ sender: UIPanGestureRecognizer)
    {
        // 1
         let translation = sender.translation(in: view)

         // 2
         guard let gestureView = sender.view else
         {
           return
         }

         gestureView.center = CGPoint(
           x: gestureView.center.x + translation.x,
           y: gestureView.center.y + translation.y
         )

         // 3
         sender.setTranslation(.zero, in: view)
    }
    
}

