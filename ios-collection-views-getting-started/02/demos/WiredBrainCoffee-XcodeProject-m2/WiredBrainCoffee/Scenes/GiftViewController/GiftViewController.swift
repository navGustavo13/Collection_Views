//
//  GiftViewController.swift
//  WiredBrainCoffee
//
//  Created by gustavo.salazar on 14/06/22.
//  Copyright © 2022 Mark Moeykens. All rights reserved.
//

import UIKit

class GiftViewController: UIViewController {

    let colorData:[UIColor] = [UIColor.blue,UIColor.magenta,UIColor.lightGray,UIColor.orange,UIColor.blue,UIColor.magenta,UIColor.lightGray,UIColor.orange,UIColor.blue,UIColor.magenta,UIColor.lightGray,UIColor.orange,UIColor.blue,UIColor.magenta,UIColor.lightGray,UIColor.orange]
    
    @IBOutlet weak var giftCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        giftCollectionView.dataSource = self
        giftCollectionView.delegate = self
    }

  
}


extension GiftViewController:UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GiftViellCell", for: indexPath)
        cell.backgroundColor = colorData[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt  indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = collectionView.bounds.width / 2
        let height: CGFloat = 100
        
        return CGSize(width: width, height: height)
    }
    
}
