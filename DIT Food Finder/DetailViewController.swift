//
//  DetailViewController.swift
//  DIT Food Finder
//
//  Created by D7703_22 on 2018. 5. 30..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var detailTableView: UITableView!
    @IBOutlet weak var detailImage: UIImageView!
    
    var cellName = ""
    var cellAddress = ""
    var cellType = ""
    var cellImage = ""
    var cellMenu = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // delegate와 UIViewController와 연결
    detailTableView.delegate = self
    detailTableView.dataSource = self
        
        self.title = cellName
        
        //detailName.text = cellName
        //detailAddress.text = cellAddress
        //detailType.text = cellType
        
        detailImage.image = UIImage(named: cellImage)
        
    }

    func numberOfSection(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = cellAddress
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = cellType
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = cellMenu
        default:
            <#code#>
        }
    }
    
    func tableView(_ tableVeiw: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVeiw.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        cell.textLabel?.text = cellAddress
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
