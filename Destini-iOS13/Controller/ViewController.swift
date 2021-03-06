//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.")
    
    var stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You find a treasure chest.", choice1: "Take a left.", choice2: "Take a right.")
    ]
    
    var storyLine = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = stories[storyLine].title
        choice1Button.setTitle(stories[storyLine].choice1, for: .normal)
        choice2Button.setTitle(stories[storyLine].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.currentTitle == stories[storyLine].choice1 {
            storyLine = 1
        } else {
            storyLine = 2
        }
        
        updateUI()
        
    }
    
    func updateUI(){
        
        storyLabel.text = stories[storyLine].title
        choice1Button.setTitle(stories[storyLine].choice1, for: UIControl.State.normal)
        choice2Button.setTitle(stories[storyLine].choice2, for: UIControl.State.normal)

        
    }
    
    
}

