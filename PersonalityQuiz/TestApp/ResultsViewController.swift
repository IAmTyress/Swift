//
//  ResultsViewController.swift
//  TestApp
//
//  Created by Мас on 26.03.2020.
//  Copyright © 2020 Мас. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]!
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responesTypes = responses.map { $0.type }
        for response in responesTypes {
            let newCount: Int
            
            if let oldCount = frequencyOfAnswers[response] {
                newCount = oldCount + 1
            } else {
                newCount = 1
            }
         
            frequencyOfAnswers[response] = newCount
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: {
            (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.sorted{ $0.1 > $1.1}.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
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
