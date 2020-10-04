//
//  DetailViewController.swift
//  RxSwiftIntro
//
//  Created by Ramill Ibragimov on 04.10.2020.
//

import UIKit
import RxSwift

//Delegate pattern
/*
protocol CharactersDelegate {
    func didSelectCharacters(_ name: String)
}
*/

class DetailViewController: UIViewController {
    
    //Delegate pattern
    //var delegate: CharactersDelegate?
    
    // Rx
    private let selectedCharacterVariable = Variable("User")
    var selectedCharacter: Observable<String> {
        return selectedCharacterVariable.asObservable()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    @IBAction func characterSelect(_ sender: UIButton) {
        
        guard let characterName = sender.titleLabel?.text else { return }
        
        //Delegate pattern
        /*
        if let delegateObject = delegate {
            delegateObject.didSelectCharacters(characterName)
        }
        */
        
        //Rx
        selectedCharacterVariable.value = characterName
    }
    
}
