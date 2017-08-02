//
//  SecondScreen.swift
//  swoosh-app
//
//  Created by Kareem Ismail on 7/31/17.
//  Copyright © 2017 Whatever. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
//    @IBAction func BackButtonPressed(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }

}
