//
//  SecondViewController.swift
//  DataTransferBetweenPages
//
//  Created by İbrahim Atmaca on 4.09.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    // Veri taşıma esnasında kullanılacak değişken
    var message: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        //Gönderilen veriyi sayfa yüklenirken label nesnesine ataması yapılıyor
        messageLabel.text = message!
    }
    
}
