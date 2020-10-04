//
//  DetailViewController.swift
//  RxSwiftIntro
//
//  Created by Ramill Ibragimov on 04.10.2020.
//

import UIKit

protocol CharactersDelegate {
    func didSelectCharacters(_ name: String)
}

class DetailViewController: UIViewController {
    
    var delegate: CharactersDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    @IBAction func characterSelect(_ sender: UIButton) {
        
        guard let characterName = sender.titleLabel?.text else { return }
        
        if let delegateObject = delegate {
            delegateObject.didSelectCharacters(characterName)
        }
    }
    
}
