//
//  Decision.swift
//  Destini-iOS13
//
//  Created by Zak Ashour on 5/26/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Decision{
    let cause: String
    let effect: (inout StoryBrain) -> Void

    init(c: String, e: @escaping (inout StoryBrain) -> Void){
        self.cause = c
        self.effect = e
    }
}
