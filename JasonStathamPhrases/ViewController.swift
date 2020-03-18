//
//  ViewController.swift
//  JasonStathamPhrases
//
//  Created by Viktor Rezvantsev on 16.03.2020.
//  Copyright © 2020 Viktor Rezvantsev. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
//    static let stathamImage = UIImage(named: "Statham")
//    let imageView = UIImageView.init(image: stathamImage)
    
    
    let phrases = [
        "На чужом мопеде по ямам, как на торпеде.",
        "Если тебе не рады где-то в рваных носках, то и в целых туда ходить не стоит.",
        "Жопу поднял - место потерял.",
        "Если мужчина просит руку женщины, значит своя устала.",
        "На педалях пяточки, еду на девяточке.",
        "Роллы для лохов, пельмешки для пацанов.",
        "Пиво, вино, водочка, колбаса, селёдочка.",
        "Кто не бухает, тот не отдыхает."
    ]

    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var phraseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        phraseLabel.text = phrases[0]
        phraseLabel.sizeToFit()
        
//        view.addSubview(imageView)
    }

    @IBAction func updatePhrase(_ sender: UIButton) {
        //let shuffledPhrases = phrases.shuffled()
        phraseLabel.text = phrases.randomElement()
    }
}

