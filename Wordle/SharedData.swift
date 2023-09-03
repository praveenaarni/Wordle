//
//  SharedData.swift
//  Wordle
//
//  Created by Praveena Arni on 4/10/23.
//

import Foundation

class SharedData{
    static var storedString: String = ""
    static var numOfWordsEntered: Int = 0
    static var char1: Character = "A"
    static var char2: Character = "A"
    static var char3: Character = "A"
    static var char4: Character = "A"
    static var char5: Character = "A"
    static var correctWord: String = ""
    
    static var Correctchar1: Character = "A"
    static var Correctchar2: Character = "A"
    static var Correctchar3: Character = "A"
    static var Correctchar4: Character = "A"
    static var Correctchar5: Character = "A"
    
    static var usableWords = [String]()
    
    static var CharArray = [char1,char2,char3,char4,char5]
    static var correctArray = [Correctchar1, Correctchar2, Correctchar3, Correctchar4, Correctchar5]
    static var greenArray: [Character] = []
    
}
