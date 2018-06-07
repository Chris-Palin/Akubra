//
//  productViewController.swift
//  Akubra
//
//  Created by Chris Palin on 14/5/18.
//  Copyright © 2018 Chris Palin. All rights reserved.
//

import UIKit

class productViewController: UIViewController {

    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var categoryBody: UILabel!
    
    var category: [String: String]!
    var country: [String: String]!
    var indexPath: IndexPath!
    
    @IBAction func dismiss(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryLabel.text = country["Title"]
        categoryImage.image = UIImage(named: country["Image"]!)
        categoryBody.text = country["Caption"]
        
    }
    
    
    
    
}
