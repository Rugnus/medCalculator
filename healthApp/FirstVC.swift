//
//  FirstVC.swift
//  healthApp
//
//  Created by Sungur on 30.06.2022.
//

import UIKit

class FirstVC: UIViewController {

    
    @IBOutlet weak var pHField: UITextField!
    @IBOutlet weak var paField: UITextField!
    @IBOutlet weak var BEField: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.numberOfLines = 0
        answerLabel.text = ""
        answerButton.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateButtonPressed(_ sender: Any) {
        let number1 = pHField.text
        let number2 = paField.text
        let number3 = BEField.text
        if Double(number1!)! <= 7.36 && Double(number2!)! > 40 {
            answerLabel.text = "Респираторный ацидоз: Развивается при неадекватной вентиляции, когда продукция CO2 превышает его элиминацию. Возможные причины: обструкция дыхательных путей, депрессия дыхания"
        } else if Double(number1!)! > 7.44 && Double(number2!)! < 40 {
            answerLabel.text = "Респираторный алкалоз: Возникает при гипервентиляции. Гипервентиляция может быть следствием ответа на гипоксемию и включения гипоксического респираторного драйва. Способность легких к выведению CO2 значительно выше, чем к абсорбции O2, в связи с чем при заболеваниях легких часто наблюдается гипоксемия на фоне нормального или пониженного уровня CO2. Причиной респираторного алкалоза может быть ИВЛ с высоким минутным объемом вентиляции."
        } else if Double(number1!)! <= 7.36 && Double(number3!)! < 0 {
            answerLabel.text = "Метаболический ацидоз: Множество этиологических факторов: Потери бикарбоната через ЖКТ или хроническое поражение почек (нормальный анионный интервал); Поступление дополнительных количеств неорганических кислот, например, при диабетическом кетоацидозе, лактат-ацидозе, связанном с тканевой гипоксией, передозировка салицилатов, отравление этиленгликолем и прочими ядами, снижение экскреции кислот при почечной недостаточности (повышение анионного интервала)."
        } else if Double(number1!)! > 7.44 && Double(number3!)! > 0 {
            answerLabel.text = "Метаболический алкалоз: Возникает при потерях желудочного содержимого (например, пилоростеноз) и терапии диуретиками. Метаболический алкалоз часто сопровождается снижением хлоридов (Cl-) сыворотки."
        } else {
            answerLabel.text = "Смешанный (метаболический и респираторный) ацидоз или алкалоз: Могут развиваться при таких тяжелых расстройствах, как септический шок, полиорганная недостаточность, остановка кровообращения."
        }
        
    }

}
