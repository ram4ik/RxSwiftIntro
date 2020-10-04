//
//  ViewController.swift
//  RxSwiftIntro
//
//  Created by Ramill Ibragimov on 04.10.2020.
//

import UIKit

class ViewController: UIViewController, CharactersDelegate {
    
    func didSelectCharacters(_ name: String) {
        self.GreetinsLabel.text = "User select: \(name)"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var GreetinsLabel: UILabel!
    

    @IBAction func UserSelectionPressed(_ sender: Any) {
        
        let detailsVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailsVC.delegate = self
        
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}

