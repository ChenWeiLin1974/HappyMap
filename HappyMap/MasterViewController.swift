//
//  MasterViewController.swift
//  HappyMap
//
//  Created by user on 2019/9/21.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let names:[String] = ["A", "B", "C"]
    
    var selectedName : String = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let name = names[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PositionCell") as! PositionCell
        
        cell.updateContent(name: name)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = names[indexPath.row]
        
        
        performSegue(withIdentifier: "moveToDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "moveToDetailSegue":
            
            let dest = segue.destination as! DetailViewController
            dest.傳入值 = self.selectedName
            
            break
        default:
            break
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
