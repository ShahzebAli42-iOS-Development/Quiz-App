//
//  ViewController.swift
//  I160246 Quizzler
//
//  Created by Minhax on 01/03/2020.
//  Copyright © 2020 Talha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func Tru(_ sender: UIButton) {
        Quizz.Score (answer: true)
        
        ViewUpdate()
    }
    @IBOutlet weak var Scor: UILabel!
    
    @IBAction func Fals(_ sender: UIButton) {
        Quizz.Score(answer: false)
        
        ViewUpdate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ViewUpdate()
        
    }
    
lazy var sawal = Quizz.NewGame()
    
    func ViewUpdate()
    {
        sawal = Quizz.NewGame()
        ques.text = "Question :  \(sawal!)"
        Scor.text = "Score : \(Quizz.Scores )"
        
    }
    @IBOutlet weak var ques: UILabel!
    var Quizz = Questions()
    
}

