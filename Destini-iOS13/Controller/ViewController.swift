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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI(){
        let story = storyBrain.getStory()
        storyLabel.text = story.text
        choice1Button.setTitle(story.choice1.cause, for: .normal)
        choice2Button.setTitle(story.choice2.cause, for: .normal)
        
    }
        
    @IBAction func selectChoice1(_ sender: UIButton) {
        let story = storyBrain.getStory()

        switch(sender.currentTitle){
        case story.choice1.cause:
            storyBrain.applyChoice(story.choice1)
        case story.choice2.cause:
            storyBrain.applyChoice(story.choice2)
        default:
            return
        }
        updateUI()
        
    }
}

