//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gerardo Hernandez on 3/5/21.
//

import UIKit

class DefinitionViewController: UIViewController {
    // MARK: - Properties
    
    var vocabWord: VocabularyWord?
    
    // MARK: - IBOutlets
    
    @IBOutlet var wordLabel: UILabel?
    @IBOutlet var textView: UITextView?
    
    // MARK: - Views
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    // MARK: - Helper Views
    
    func updateViews() {
        guard let swiftWord = vocabWord else { return }
        
        wordLabel?.font = .boldSystemFont(ofSize: 25)
        
        wordLabel?.text = swiftWord.word
        textView?.text = swiftWord.definition
    }
    
}
