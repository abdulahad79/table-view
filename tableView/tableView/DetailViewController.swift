//
//  DetailViewController.swift
//  tableView
//
//  Created by ZOHAIB  on 13/02/2019.
//  Copyright © 2019 ZOHAIB . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var diimg: UIImageView!
    @IBOutlet weak var dilbl: UILabel!
    @IBOutlet weak var dilbl2: UILabel!
    
    var strlbl:String!
    var strlbl2:String!
    var strimg:UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diimg.image = strimg
        dilbl.text = strlbl
        dilbl2.text = strlbl2
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
