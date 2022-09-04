//
//  Person.swift
//  DataTransferBetweenPages
//
//  Created by İbrahim Atmaca on 4.09.2022.
//

import Foundation

class Person {
    
    var personID: Int?
    var personName: String?
    
    init(){}
    
    init(personID: Int?, personName:String?){
        self.personID = personID
        self.personName = personName
    }
    
    
}
