//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct Story{
    let text: String
    let choice1: Decision
    let choice2: Decision
    
    init(t: String, c1: Decision, c2: Decision){
        self.text = t
        self.choice1 = c1
        self.choice2 = c2
    }
}
