//
//  QuestionsViewController.swift
//  QuizApp
//
//  Created by Alan Ionita on 08/02/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // array of data 
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var questions = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // question1
        questions.append(Question(questionText: "1 - Which of these is likely to be lacking in a vegan diet?", imageURL: "vitamins", answers: ["a) Vitamin E", "b) Vitamin C", "c) Vitamin B12"], correctAnswers: [2] , correctAnswerDetail: "Vitamin B12 is likely to fall short in diets made up solely of plant foods, as its main food sources are meat and fish. Some foods, including some nutritional yeasts and meat substitutes, may contain added B12, which would be listed on their labels. However, supplements of B12 are often recommended as a reliable source of the vitamin."))
        // question2
        questions.append(Question(questionText: "2 - Beans and legumes are plant-based sources of iron. Which of these contains the most iron?", imageURL: "legumes", answers: ["a) Kidney beans", "b) Lentils", "c) Lima beans", "d) Chickpeas"], correctAnswers: [1], correctAnswerDetail: "Cooked, per cup, lentils contain 6.6 mg, compared to 5.2 mg in kidney beans, 4.7 mg in chickpeas, and 4.5 mg in lima beans."))
        
        // question3
        questions.append(Question(questionText: "3 - Honey is a plant food", imageURL: "honey", answers: ["true", "false"], correctAnswers: [1], correctAnswerDetail: "Although the basic material for honey, nectar, comes from flowers, it doesn't naturally turn into honey. After bees collect nectar, enzymes and proteins in their stomachs convert it into honey, so honey is an animal product."))
        
        // question4
        questions.append(Question(questionText: "4 - Soy foods are a good source of calcium", imageURL: "soy_produce", answers: ["a) Sometimes","b) Always","c) Never"], correctAnswers: [0], correctAnswerDetail: "Soy foods are a good source of calcium only when they are enriched with the mineral. Checking the label of a specific product is the only way to tell whether or not it contains added calcium."))
        
        // question5
        questions.append(Question(questionText: "5 - It's difficult to obtain sufficient vitamin D from plant foods.", imageURL: "mushrooms", answers: ["true", "false"], correctAnswers: [1], correctAnswerDetail: "Fish is the main food source of vitamin D, and cow's milk enriched with the vitamin is another. Vegetarians who eat dairy products can get vitamin D from milk and yogurt. Egg yolks, for those who eat them, are another source. For anyone following a purely plant-based diet, some plant foods have added vitamin D (check labels), and vegan vitamin D supplements are available."))
        
        // question6
        questions.append(Question(questionText: "6 - Which of these seeds are richest in healthy omega-3 fats?", imageURL: "omega3_seeds", answers: ["a) Pumpkin", "b) Flax", "c) Sunflower"], correctAnswers: [1], correctAnswerDetail: "Flax seeds, which need to be ground, are the richest plant sources of omega-3 fats. Chia seeds are a close second."))
        
        // question7
        questions.append(Question(questionText: "7 - A vegan or vegetarian diet is bound to be healthy", imageURL: "veg_diet", answers: ["true", "false"], correctAnswers: [1], correctAnswerDetail: "A diet that omits animal foods but is high in refined carbohydrates and sugar is not healthy. A wholesome vegan diet is rich in a variety of vegetables and fruits and contains legumes, plant sources of fats (such as nuts, seeds, and avocados), and a variety of whole grains. Some vegetarians might also eat dairy products and eggs."))
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewMethods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! QuestionTableViewCell
        
        let question = questions[indexPath.row]
        cell.updateUI(question: question)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
