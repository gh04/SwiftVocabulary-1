//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Gerardo Hernandez on 3/5/21.
//

import UIKit

class WordsTableViewController: UITableViewController {
    // MARK: - Properties
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "A named value used to store information. Variables can be changed after creation."), VocabularyWord(word: "Constant", definition: "A named value used to store information. Constants can't be changed after creation."), VocabularyWord(word: "Function", definition: "Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        // word in indexpath
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Check the segue identifier to know which view controller you are segueing to
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let definitionVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let word = vocabWords[indexPath.row]
            
            definitionVC.vocabWord = word
            
        }
        
        
    }
    
}
