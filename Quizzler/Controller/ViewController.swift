//
//  ViewController.swift
//  Quizzler
//
//  Created by tetsuta matsuyama on 2022/06/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var questionNumber = 0
    var score = 0
    var actualAnswer = ""
    
     let quiz = [
     ["Four + Two is equal to Six.", "True"],
     ["Five - Three is greater than One.", "True"],
     ["Three + Eight is less than Ten.", "False"]
     ]

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[questionNumber][0]
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        actualAnswer = quiz[questionNumber][1]
        checkAnswer(userAnswer)
        questionLabel.text = quiz[questionNumber][0]
    }
    
    func checkAnswer(_ userAnswer: String)  {
        if userAnswer == actualAnswer {
            score += 1
        }
        nextQuestion()
    }

    func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}

