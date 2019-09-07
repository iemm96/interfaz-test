//
//  ArtistViewController.swift
//  interfaz-test
//
//  Created by Emmanuel on 9/7/19.
//  Copyright © 2019 Emmanuel. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}

extension ArtistViewController: UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as! AlbumCollectionViewCell
        
        cell.albumImageView.image = #imageLiteral(resourceName: "7VwpWp4")
        cell.artistLabel.text = "Lindsey Stirling"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongCell", for: indexPath) as! SongTableViewCell
        cell.songLabel.text = "Song"
        cell.albumImageView.image = #imageLiteral(resourceName: "7VwpWp4")
        cell.albumLabel.text = "Brave Enough"
        cell.timeLabel.text = "4:20"
        return cell
    }
    
    
}
