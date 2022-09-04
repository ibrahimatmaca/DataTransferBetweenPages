//
//  ViewController.swift
//  DataTransferBetweenPages
//
//  Created by İbrahim Atmaca on 4.09.2022.
//

import UIKit

class ViewController: UIViewController {

    //Sayfamızdaki UITextField alanımızı temsil ediyor
    @IBOutlet weak var messageTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Sayfa daki buton'a tıklandığında yapılacak olan işlemleri belirleyen metod
    @IBAction func sendMessage(_ sender: Any) {
        //StoryBoard main olacak şekilde sayfa geçişini belirtiyoruz
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        //sonraki sayfayı instantiateViewController metodu ve sayfaID sayesinde atamasını yapıyoruz
        let nextPage = storyBoard.instantiateViewController(withIdentifier: "page2") as! SecondViewController
        //Gönderilmek istenen mesajı textField içerisinden alıyoruz
        let message:String = messageTextField.text!
        //sonraki sayfada tutmuş olduğumuz değişkene mesajımızın atamasını yapıyoruz
        nextPage.message = message
        nextPage.person = Person(personID: 1, personName: "İbrahim")
        //burada sayfa geçişinin hangi stilde olacağını belirttik
        nextPage.modalPresentationStyle = .fullScreen
        //geçiş yapılacak sayfa ve animasyon ile geçişi burada ayarladık
        // self.present(nextPage, animated: true,completion: nil)
        self.navigationController?.pushViewController(nextPage, animated: true)
        
    }
    
}

