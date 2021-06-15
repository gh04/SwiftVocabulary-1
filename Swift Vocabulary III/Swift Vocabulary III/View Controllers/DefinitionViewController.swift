//
//  DefinitionViewController.swift
//  Swift Vocabulary III
//
//  Created by Gerardo Hernandez on 6/15/21.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // MARK: - Properties
    var vocabWord: VocabularyWord?
    
    // MARK: - IBOutlets
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var definitionTextView: UITextView!
    
    // MARK: - Views
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    // MARK: - Helper Methods
    private func updateViews() {
        guard let vocabWord = vocabWord else { return }
        
        wordLabel.text = vocabWord.word
        definitionTextView.text = vocabWord.definition
    }
    
}
