//
//  CardImage.swift
//  interfaz-test
//
//  Created by Emmanuel on 9/7/19.
//  Copyright © 2019 Emmanuel. All rights reserved.
//

import UIKit

@IBDesignable
class CardImage: UIImageView {

    @IBInspectable var cornerRadius: CGFloat = 2.0 //valor de las equinas a redondear
    @IBInspectable var borderWidth: CGFloat = 0 //Ancho del borde
    @IBInspectable var borderColor: CGColor = UIColor.black.cgColor //Color del borde
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor
        clipsToBounds = true //Permite recortar la imágen
    }

}
