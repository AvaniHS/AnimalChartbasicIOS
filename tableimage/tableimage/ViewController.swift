//
//  ViewController.swift
//  tableimage
//
//  Created by APPLE-20 on 27/02/19.
//  Copyright © 2019 tableviewproj. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let Animals = ["elephant","tiger","lion","panda"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return(Animals.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        tableView.rowHeight = 200
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imageview.image = UIImage(named: Animals[indexPath.row]+".jpg")
        cell.Label.text = Animals[indexPath.row]
        return (cell)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

