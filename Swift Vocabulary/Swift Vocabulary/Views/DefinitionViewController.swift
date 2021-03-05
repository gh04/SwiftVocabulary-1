//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Gerardo Hernandez on 3/5/21.
//

import UIKit

class DefinitionViewController: UIViewController {

    var vocabWord: VocabularyWord?
    
    @IBOutlet var wordLabel: UILabel?
    @IBOutlet var textView: UITextView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    
    func updateViews() {
        guard let swiftWord = vocabWord else { return }
        
        wordLabel?.font = .boldSystemFont(ofSize: 25)
        
        wordLabel?.text = swiftWord.word
        textView?.text = swiftWord.definition
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
