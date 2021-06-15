//
//  WordsTableViewController.swift
//  Swift Vocabulary III
//
//  Created by Gerardo Hernandez on 6/15/21.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    // MARK: - Properties
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can change after being created."), VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants cannot change after being created"), VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let vocabularyWord = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabularyWord.word
        
        return cell
    }
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let defitionVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabularyWord = vocabWords[indexPath.row]
            
            defitionVC.vocabWord = vocabularyWord
            
        }
    }
    
}
