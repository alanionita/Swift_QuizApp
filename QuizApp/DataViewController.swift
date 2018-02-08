//
//  DataViewController.swift
//  QuizApp
//
//  Created by Alan Ionita on 08/02/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBAction func startQuizButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let quizQuestions = storyboard.instantiateViewController(withIdentifier: "QuizQuestions")
        self.present(quizQuestions, animated: true, completion: nil)
    }
    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

