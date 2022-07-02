//
//  SCOREVC.swift
//  healthApp
//
//  Created by Sungur on 02.07.2022.
//

import UIKit

class SCOREVC: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.numberOfLines = 0
        answerLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstCormakButtonPressed(sender: Any) {
        answerLabel.text = """
        1 степень визуализации голосовой щели при прямой ларингоскопии.
        Визуализируется бóльшая часть голосовой щели - трудностей при интубации трахеи нет
        """
    }
    
    @IBAction func secondCormakButtonPressed(sender: Any) {
        answerLabel.text = """
        2 степень визуализации голосовой щели при прямой ларингоскопии.
        Визуализируется только задняя часть голосовой щели - могут возникнуть трудности при интубации трахеи. Легкое надавливание на область гортани почти всегда позволяет увидеть черпаловидные хрящи, а иногда и голосовые связки
        """
    }
    
    @IBAction func thirdCormakButtonPressed(sender: Any) {
        answerLabel.text = """
        3 степень визуализации голосовой щели при прямой ларингоскопии. Ни одна часть голосовой щели не визуализируется, но виден надгортанник - могут возникнуть серьезные трудности при интубации трахеи
        """
    }
    
    @IBAction func fourthCormakButtonPressed(sender: Any) {
        answerLabel.text = """
        4 степень визуализации голосовой щели при прямой ларингоскопии.  Не визуализируется надгортанник - интубация трахеи без использования специальных методик невозможна. Данная ситуация предсказуема при наличии явной патологии, но крайне редко встречается и у лиц с нормальной анатомией
        """
    }
    

}
