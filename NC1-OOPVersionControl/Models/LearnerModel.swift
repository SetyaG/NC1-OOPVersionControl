//
//  LearnerModel.swift
//  NC1-OOPVersionControl
//
//  Created by Owen Prasetya on 15/05/19.
//  Copyright © 2019 Owen Prasetya. All rights reserved.
//

import Foundation

class LearnerModel {
    
    var name: String?
    var age: Int?
    var height: Float?
    var profileImage: String?
    
    init(learnerName: String, learnerAge: Int, learnerHeight: Float, learnerProfileImage: String) {
        self.name = learnerName
        self.age = learnerAge
        self.height = learnerHeight
        self.profileImage = learnerProfileImage
    }
    
    func increaseAge() {
        self.age! += 1
    }
    
}
