//
//  SecondScreen.swift
//  swoosh-app
//
//  Created by Kareem Ismail on 7/31/17.
//  Copyright © 2017 Whatever. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!

    @IBOutlet weak var nextButton: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

    @IBAction func legueSelected(_ sender: BorderButton) {
        if let labelText = sender.titleLabel?.text {
            desiredLeague(labelText)
        }
    }
    
    func desiredLeague(_ league: String){
        player.desiredLeague = league
        nextButton.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            
            skillVC.player = player
            
        }
    }
   
}
