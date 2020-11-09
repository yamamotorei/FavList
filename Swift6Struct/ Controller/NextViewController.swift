//
//  NextViewController.swift
//  Swift6Struct
//
//  Created by 山本怜 on 2020/11/09.
//

import UIKit

protocol SetOKDelegate {
    func setOK(check:Person)
}

class NextViewController: UIViewController {
    
    var person = Person()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var shumiTextField: UITextField!
    @IBOutlet weak var movieTextField: UITextField!
    
    var setOKDelegate:SetOKDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func done(_ sender: Any) {
        
        person.name = nameTextField.text!
        person.shumi = shumiTextField.text!
        person.movie = movieTextField.text!
        setOKDelegate?.setOK(check: person)
        
        dismiss(animated: true, completion: nil)
    }
    
    


}
