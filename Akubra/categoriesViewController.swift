//
//  categoriesViewController.swift
//  Akubra
//
//  Created by Chris Palin on 13/5/18.
//  Copyright © 2018 Chris Palin. All rights reserved.
//

import UIKit
import AVKit

class categoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
        
    }
    
    @IBOutlet weak var categoriesView: UIView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
        let country = countries[indexPath.row]
        //cell.titleLabel.text = category["Title"]
        cell.titleLabel.text = country["Title"]
        cell.coverImageView.image = UIImage(named: country["Image"]!)
        
        
       //"" let animator = UIViewPropertyAnimator(duration: 0.7, dampingRatio: 0.7) {
       //     cell.cellView2.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
       //     cell.coverImageView.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
       // }
        //animator.startAnimation()

        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "catalogToCategory", sender: indexPath)
    }
    

    @IBOutlet weak var categoryCollection: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryCollection.delegate = self
        
        categoryCollection.dataSource = self

        // Do any additional setup after loading the view.
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "catalogToCategory" {
            let toViewController = segue.destination as! productViewController
            let indexPath = sender as! IndexPath
            let country = countries[indexPath.row]
            toViewController.country = country
            toViewController.indexPath = indexPath
        }
    }



}


