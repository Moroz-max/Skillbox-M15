//
//  ViewController.swift
//  practiceM15
//
//  Created by Максим Морозов on 17.12.2023.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {
    
    let cellID = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? CustomCell ?? UITableViewCell()
        
        return cell
    }
    
    
}
