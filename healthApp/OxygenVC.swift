//
//  OxygenVC.swift
//  healthApp
//
//  Created by Sungur on 01.07.2022.
//

import UIKit

class OxygenVC: UIViewController {

    @IBOutlet weak var paOField: UITextField!
    @IBOutlet weak var BEField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = ""
        answerLabel.numberOfLines = 0
        calculateButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
        let number1 = paOField.text
        let number2 = BEField.text
        
        if paOField.text == "" || BEField.text == "" {
            answerLabel.text = "ВВЕДИТЕ ЗНАЧЕНИЯ!!!"
        } else if (((Float(number1!)! / (Float(number2!)!) / 10)) * 1000) < 100 {
            let index = (Float(number1!)! / (Float(number2!)!) / 10) * 1000
            answerLabel.text = """
            Индекс оксигенации: \(index) мм рт.ст.
            Степень тяжести ОРДС: Тяжёлая
            Возможные причины: Прогрессирующий рак, Сепсис(бактериальное заражение крови), ВИЧ-инфекция, Множественные повреждения органов, Пересадка органов.
            Симптомы: Учащенное дыхание, Чувство нехватки воздуха, ощущение невозможности сделать нормальный вдох, Низкий уровень кислорода в крови, что может привести к отказу органа и появлению таких симптомов, как учащенное сердцебиение, нарушение сердечного ритма, спутанность сознания, повышенная утомляемость.
            Лечение: Точные направления по лечению при тяжелой стадии необходимо узнать у специалиста!


            """
        } else if ((Float(number1!)! / (Float(number2!)!) / 10) * 1000) >= 100 && ((Float(number1!)! / (Float(number2!)!) / 10) * 1000) < 200  {
            let index = (Float(number1!)! / (Float(number2!)!) / 10) * 1000
            answerLabel.text = """
            Индекс оксигенации: \(index) мм рт.ст.
            Степень тяжести ОРДС: Средняя
            Возможные причины: Преклонный возраст пациента, Хронические заболевания печени, ВИЧ-инфекция, Пересадка органов.
            Симптомы: Учащенное дыхание, Чувство нехватки воздуха, ощущение невозможности сделать нормальный вдох
            Лечение: Лечение ОРДС включает борьбу с первопричиной патологии. Например, если у пациента диагностирована бактериальная инфекция, обычно назначаются антибиотики. В связи с тем, что пациенты во время терапии обычно не могут питаться самостоятельно, жидкость и питательные вещества вводятся в организм посредством капельниц и трубок.
            """
        } else if ((Float(number1!)! / (Float(number2!)!) / 10) * 1000) > 200{
            let index = (Float(number1!)! / (Float(number2!)!) / 10) * 1000
            answerLabel.text = """
            Индекс оксигенации: \(index) мм рт.ст.
            Степень тяжести ОРДС: Легкая
            Возможные причины: Преклонный возраст пациента, Хронические заболевания печени
            Симптомы: Учащенное дыхание
            Лечение: Лечение ОРДС включает борьбу с первопричиной патологии. Например, если у пациента диагностирована бактериальная инфекция, обычно назначаются антибиотики. В связи с тем, что пациенты во время терапии обычно не могут питаться самостоятельно, жидкость и питательные вещества вводятся в организм посредством капельниц и трубок.
            """
        } else if Int(number1!)! > 250 || Int(number1!)! < 0 || Int(number2!)! > 21 || Int(number2!)! < 100 {
            answerLabel.text = """
            ВВЕДИТЕ КОРРЕКТНЫЕ ЗНАЧЕНИЯ.
            PaO2: от 0 до 250
            FiO2: от 21 до 100
            """
        }
    }
    

}
