//
//  ChangeCarCollectionViewController.swift
//  SolievGame
//
//  Created by user on 11.11.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

var userCarImage: String = "sedan_blue"

class ChangeCarCollectionViewController: UICollectionViewController {

    let cars = ["sedan_blue", "sedan_pink", "sedan_purple", "sport_car"]
    
    override func viewDidLoad() {
        
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ChangeCarCollectionViewCell
    
        let imageName = cars[indexPath.item]
        let image = UIImage(named: imageName)
        cell.carPicture.image = image
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        userCarImage = cars[indexPath.item]
        let alert = UIAlertController(title: "Car change", message: "Car Changed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        return true
    }
}
