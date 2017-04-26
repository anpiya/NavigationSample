//
//  OceanBlueViewController.swift
//  NavigationTest
//
//  Created by SDS-017 on 2017. 4. 26..
//  Copyright © 2017년 SDS-017. All rights reserved.
//

import UIKit

class OceanBlueViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendText(newText: String) {
        self.myLabel.text = newText
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = segue.destination as? EggPlantViewController {
            vc.oceanBlueDelegate = self
        }
    }
}
