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
    @IBOutlet weak var questionText: UITextView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI (question: Question) {
        titleImage.image = UIImage.init(named:"\(question.getImageUrl)")
        questionText.text = question.getQuestionText
        label1.text = question.getAnswersByID(0)
        label2.text = question.getAnswersByID(1)
        label3.text = question.getAnswersByID(2)
    }

}
