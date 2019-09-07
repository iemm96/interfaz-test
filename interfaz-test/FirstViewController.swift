//
//  FirstViewController.swift
//  interfaz-test
//
//  Created by Emmanuel on 9/7/19.
//  Copyright © 2019 Emmanuel. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController : UIViewController {
    
    /*
     View Load que se ejecuta antes de que se cargue la vista
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage() //Remueve la línea de la barra de título
        
    }
    
    
    @IBAction func logutHandler(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }

}

extension FirstViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2 //Cantidad de elementos a mostrar
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coverCell", for: indexPath) as! CoverCollectionViewCell
        
        cell.coverUIImageView.image = #imageLiteral(resourceName: "cover")
        cell.artistLabel.text = "Sarah Brightman"
        cell.songLabel.text = "Hymn"
        
        return cell
    }
    
    
    
}
