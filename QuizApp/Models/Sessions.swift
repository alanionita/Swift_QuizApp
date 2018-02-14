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
    private var _sessionUser: String!
    private var _sessionAnswers: [String]
    private var _sessionScore: Int!
    
    // getters
    var getSessionID: String {
        return _sessionID
    }
    
    var getSessionUser: String {
        return _sessionUser
    }
    
    var getSessionAnswers: [String] {
        return _sessionAnswers
    }
    
    var getSessionScore: Int {
        return _sessionScore
    }
    
    // initialise the class with the relevant params and assign them correctly
    init(sessionUser: String, sessionAnswers: [String], sessionScore: Int) {
        _sessionID = NSUUID().uuidString.lowercased() + sessionUser
        _sessionUser = sessionUser
        _sessionAnswers = sessionAnswers
        _sessionScore = sessionScore
    }
}

