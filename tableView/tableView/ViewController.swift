//
//  ViewController.swift
//  tableView
//
//  Created by ZOHAIB  on 13/02/2019.
//  Copyright © 2019 ZOHAIB . All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    

    @IBOutlet weak var tbview: UITableView!
    var arr1 = ["LAHORE","KARACHI","MULTAN","PESHAWAR","FAISLABAD","GUJRANWALA","ISLAMABAD"]
    var arrimg = [#imageLiteral(resourceName: "lahore") , #imageLiteral(resourceName: "karachi") ,#imageLiteral(resourceName: "multan") , #imageLiteral(resourceName: "110267583") ,#imageLiteral(resourceName: "faislabad") , #imageLiteral(resourceName: "gujranwala") ,#imageLiteral(resourceName: "islamabad")]
    var arr2 = ["punjab","Sindh","Punjab","Kpk","Punjab","Punjab","Capital"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.lbl1.text = arr1[indexPath.row]
        cell.lbl2.text = arr2[indexPath.row]
        cell.img.image = arrimg[indexPath.row]
        return cell
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        cell?.textLabel?.text = arr1[indexPath.row]
//        cell?.detailTextLabel?.text = arr2[indexPath.row]
//        return cell!
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strlbl = arr1[indexPath.row]
        detail.strlbl2 = arr2[indexPath.row]
        detail.strimg = arrimg[indexPath.row]
        
        self.navigationController? .pushViewController(detail, animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arr1.remove(at: indexPath.row)
            arr2.remove(at: indexPath.row)
            arrimg.remove(at: indexPath.row)
            tbview.deleteRows(at: [indexPath], with: .fade)
            
        }
            
            
    
        
    }


}

