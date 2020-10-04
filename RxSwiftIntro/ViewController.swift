//
//  ViewController.swift
//  RxSwiftIntro
//
//  Created by Ramill Ibragimov on 04.10.2020.
//

import UIKit
import RxSwift

class ViewController: UIViewController { //, CharactersDelegate {
    
    //Rx
    let disposeBag = DisposeBag()
    
    //Delegate pattern
    /*
    func didSelectCharacters(_ name: String) {
        self.GreetinsLabel.text = "User select: \(name)"
    }
    */
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var GreetinsLabel: UILabel!
    

    @IBAction func UserSelectionPressed(_ sender: Any) {
        
        let detailsVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        //Delegate pattern
        //detailsVC.delegate = self
        
        //Rx
        detailsVC.selectedCharacter
            .subscribe { [weak self] character in
                self?.GreetinsLabel.text = "User select: \(character)"
            }
            .disposed(by: disposeBag)
        
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}

