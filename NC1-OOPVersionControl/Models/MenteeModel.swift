//
//  MenteeModel.swift
//  NC1-OOPVersionControl
//
//  Created by Owen Prasetya on 15/05/19.
//  Copyright © 2019 Owen Prasetya. All rights reserved.
//

import Foundation

class MenteeModel: LearnerModel {
    var mentDomain: String
    
    init(menteeName: String, menteeAge: Int, menteeHeight: Float, menteeProfileImage: String, menteeDomain: String) {
        
        self.mentDomain = menteeDomain
        
        super.init(learnerName: menteeName, learnerAge: menteeAge, learnerHeight: menteeHeight, learnerProfileImage: menteeProfileImage)
    }
    
}
