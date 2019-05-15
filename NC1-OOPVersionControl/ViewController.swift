//
//  ViewController.swift
//  NC1-OOPVersionControl
//
//  Created by Owen Prasetya on 15/05/19.
//  Copyright © 2019 Owen Prasetya. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var profImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    
    @IBOutlet weak var titleCarLabel: UILabel!
    @IBOutlet weak var carPowerLabel: UILabel!
    @IBOutlet weak var carBrandLabel: UILabel!
    
    var myLearnerInstance: LearnerModel?
    var facilitatorInstance: FacilitatorModel?
    var carInstance: CarModel?
    
    var carSquare: CGRect?
    var carFrame: UIView?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLearnerInstance = LearnerModel(learnerName: "xNEWo", learnerAge: 18, learnerHeight: 172, learnerProfileImage: "")
        facilitatorInstance = FacilitatorModel(facilName: "David", facilAge: 23, facilHeight: 175, facilProfileImage: "", facilPerk: "Free Flow Starbucks")
        carInstance = CarModel(carBrand: "Lamborghini", carPower: 800, carTires: 4, carPosX: 50, carPosY: 600)
        
        carSquare = CGRect(x: carInstance!.posX, y: carInstance!.posY, width: 50, height: 50)
        carFrame = UIView(frame: carSquare!)
        carFrame!.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        
        self.view.addSubview(carFrame!)
        
        updateUI()
        
    }
    
    
    @IBAction func increaseAgeButtonClicked(_ sender: Any) {
        if let instance = myLearnerInstance {
            instance.increaseAge()
        }
        updateUI()
    }
    
    func updateUI() {
        if let instance = myLearnerInstance {
            nameLbl.text = instance.name
            ageLbl.text = "Age: \(instance.age ?? -1)"
            heightLbl.text = "Height: \(instance.height ?? -1)"
        }
        if let instance = carInstance {
            carBrandLabel.text = instance.brand
            carPowerLabel.text = "HP: \(instance.machinePower)"
        }
    }
    
    func sum() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, animations: {
            self.carFrame?.transform = CGAffineTransform(translationX: 10, y: 0)
        }, completion: nil)
    }

    @IBAction func moveRight(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.carFrame?.transform = CGAffineTransform(translationX: 10, y: 0)
        }, completion: nil)
    }
    
    
    @IBAction func upgradeMachine(_ sender: Any) {
        if let instance = carInstance {
            instance.increasePower()
        }
        updateUI()
    }
    
}

