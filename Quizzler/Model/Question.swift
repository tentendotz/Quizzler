//
//  Question.swift
//  Quizzler
//
//  Created by tetsuta matsuyama on 2022/06/07.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let correctAnswer: String

    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
