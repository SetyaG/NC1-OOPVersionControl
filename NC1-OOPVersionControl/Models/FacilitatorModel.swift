//
//  FacilitatorModel.swift
//  NC1-OOPVersionControl
//
//  Created by Owen Prasetya on 15/05/19.
//  Copyright © 2019 Owen Prasetya. All rights reserved.
//

import Foundation

class FacilitatorModel: LearnerModel {
    var facilitatorPerk: String
    
    init(facilName: String, facilAge: Int, facilHeight: Float, facilProfileImage: String, facilPerk: String) {
        
        self.facilitatorPerk = facilPerk
        
        
        super.init(learnerName: facilName, learnerAge: facilAge, learnerHeight: facilHeight, learnerProfileImage: facilProfileImage)
    }
    
}
