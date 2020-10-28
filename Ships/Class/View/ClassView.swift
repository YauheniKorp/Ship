//
//  ClassView.swift
//  Ships
//
//  Created by Admin on 28.10.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ClassView: UIView {

 
    @IBOutlet var classContainer: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var numGunsLabel: UILabel!
    @IBOutlet weak var boreLabel: UILabel!
    @IBOutlet weak var displacementLabel: UILabel!
    
    init(_ classShip: ClassSpecification, _ frame: CGRect = CGRect(x: 0, y: 0, width: 150, height: 240)) {
        super.init(frame: frame)
        
        Bundle.main.loadNibNamed("ClassView", owner: self, options: nil)
        addSubview(classContainer)
        classContainer.frame = self.bounds
        classContainer.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.classContainer.backgroundColor = .systemYellow
        self.nameLabel.text = "Class is \(classShip.name)"
        self.typeLabel.text = "Type is \(classShip.type)"
        self.countryLabel.text = "Country is \(classShip.country)"
        self.numGunsLabel.text = "NumGuns: \(String(classShip.numGuns))"
        self.boreLabel.text = "Bore: \(String(classShip.bore))"
        self.displacementLabel.text = "Displacement: \(String(classShip.displacement))"
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
