//
//  MainViewController.swift
//  QuizApp
//
//  Created by Alan Ionita on 08/02/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func buttonTap(_ sender: UIButton) {
        if enterText.hasText == true {
            self.performSegue(withIdentifier: "MainToQuestionsSegue", sender: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "Enter name before starting", preferredStyle: .alert)
            alert.addAction(UIAlertAction (title: "OK", style: .default, handler: { (action) in
                self.enterText.becomeFirstResponder()
            }))
            self.present(alert, animated: true, completion: nil)
        }
     }
    @IBOutlet weak var enterText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = segue.destination as? QuestionsViewController {
            //
        }
    }

}
