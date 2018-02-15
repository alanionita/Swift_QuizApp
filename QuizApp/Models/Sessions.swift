//
//  Sessions.swift
//  QuizApp
//
//  Created by Alan Ionita on 09/02/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import Foundation

class Session {
    private var _sessionID: String!
    private var _sessionUsername: String!
    private var _sessionAnswers: [String]
    private var _sessionScore: Int!
    
    // getters
    var getSessionID: String {
        return _sessionID
    }
    
    var getSessionUsername: String {
        return _sessionUsername
    }
    
    var getSessionAnswers: [String] {
        return _sessionAnswers
    }
    
    var getSessionScore: Int {
        return _sessionScore
    }
    
    // initialise the class with the relevant params and assign them correctly
    init(sessionUsername: String, sessionAnswers: [String], sessionScore: Int) {
        _sessionID = NSUUID().uuidString.lowercased()
        _sessionUsername = sessionUsername
        _sessionAnswers = sessionAnswers
        _sessionScore = sessionScore
    }
    
    // methods
    func changeSessionUsername (newUsername: String) -> String {
        _sessionUsername = newUsername
        return "succesfully changed the username to \(_sessionUsername)"
    }
    
    func updateScore (newScore: Int) -> Int {
        _sessionScore = _sessionScore + newScore
        return _sessionScore
    }
    
    func updateSessionAnswers (newAnswer: String) -> String {
        _sessionAnswers.append(newAnswer)
        return "succesfully logged new answer against your session"
    }
}

