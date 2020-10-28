//
//  ClassCollectionViewCell.swift
//  Ships
//
//  Created by Admin on 28.10.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ClassCollectionViewCell: UICollectionViewCell {
    
    func setCell(_ shipClass: ClassSpecification) {
        let shipClass = ClassView(shipClass)
        
        self.addSubview(shipClass)
    }
    
}
