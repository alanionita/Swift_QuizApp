//
//  QuestionTableViewCell.swift
//  QuizApp
//
//  Created by Alan Ionita on 08/02/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // clears the stackView of any children view so that the recycler behaves correctly when reusing assets
    func clearStackViewChildrenViews (stackView: UIStackView) {
        stackView.subviews.forEach { $0.removeFromSuperview()}
    }
    
    // takes the data and populates the view
    func updateUI (question: Question) {
        // set image
        titleImage.image = UIImage(named: question.getImageUrl)
        
        // set question text
        questionText.text = question.getQuestionText
        
        // clear the answers stackview
        clearStackViewChildrenViews(stackView: stackView)
        
        // get the answers for each question
        let answers = question.getAnswers
        
        // add to the answers stackview the correct amount of labels for each possible answer
        for answer in answers {
            let label = UILabel()
            label.text = answer
            stackView.addArrangedSubview(label)
        }
        
    }
}
