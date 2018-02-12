//
//  Questions.swift
//  QuizApp
//
//  Created by Alan Ionita on 09/02/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import Foundation

class Question {
    private var _questionText: String!
    private var _imageURL: String!
    private var _answers: [String]
    private var _correctAnswers: [Int]
    private var _correctAnswerDetail: String
    
    // getters
    var getQuestionText: String {
        return _questionText
    }
    
    var getImageUrl: String {
        return _imageURL
    }
    
    var getAnswers: [String] {
        return _answers
    }
    
    var getCorrectAnswers: [Int] {
        return _correctAnswers
    }
    
    var getCorrectAnswerDetail: String {
        return _correctAnswerDetail
    }
    
    
    // initialise the class with the relevant params and assign them correctly
    init(questionText: String, imageURL: String, answers: [String], correctAnswers: [Int], correctAnswerDetail: String) {
        _questionText = questionText
        _imageURL = imageURL
        _answers = answers
        _correctAnswers = correctAnswers
        _correctAnswerDetail = correctAnswerDetail
    }
    
    func getAnswersByID (_ index : Int) -> String {
        if (index <= _answers.count - 1) {
            return _answers[index]
        } else {
            return "Label"
        }
    }
}
