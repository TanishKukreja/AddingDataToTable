//
//  ViewController.swift
//  AddingDataToTable
//
//  Created by Calsoft on 31/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        cell?.textLabel?.text = Games[indexPath.row]
        return cell!
    }
    


    @IBAction func saveButton(_ sender: Any) {
        let noData = "No data"
        guard let data = textFiled.text
        else{
            return
        }
        Games.append(data)

        let allertTitle = "Saving"
        let message = "Data Saved"
        let alertBox = UIAlertController(title: allertTitle, message: message, preferredStyle: .alert)

        let alertAction = UIAlertAction(title: "ok", style: .default , handler: nil)
        alertBox.addAction(alertAction)

        present(alertBox,animated: true,completion: nil)

        tableView.reloadData()
        textFiled.text = ""
    }
    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
//    var Games : [String] = ["Gta","SanAndreas","Pubg","FreeFire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
}

