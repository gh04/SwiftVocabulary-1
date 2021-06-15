//
//  WordsTableViewController.swift
//  Swift Vocabulary III
//
//  Created by Gerardo Hernandez on 6/15/21.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords = [VocabularyWord]()

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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "ShowDefinitionSegue" {
            
            guard let defitionVC = segue.destination as? DefinitionViewController, let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let vocabularyWord = vocabWords[indexPath.row]
            
            defitionVC.vocabWord = vocabularyWord
            
            
            
        }
    }

}
