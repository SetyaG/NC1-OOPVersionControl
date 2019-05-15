//
//  CarModel.swift
//  NC1-OOPVersionControl
//
//  Created by Owen Prasetya on 15/05/19.
//  Copyright © 2019 Owen Prasetya. All rights reserved.
//

import Foundation

class CarModel {
    var brand: String
    var machinePower: Int
    var numberOfTires: Int
    var posX: Int
    var posY: Int
    
    init(carBrand: String, carPower: Int, carTires: Int, carPosX: Int, carPosY: Int) {
        self.brand = carBrand
        self.machinePower = carPower
        self.numberOfTires = carTires
        self.posX = carPosX
        self.posY = carPosY
    }
    
    func gasPedal() {
        self.posX += 1
    }
    
    func increasePower() {
        self.machinePower += Int.random(in: 1 ... 100)
    }
}
