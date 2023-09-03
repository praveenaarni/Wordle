//
//  Wordle.swift
//  Wordle
//
//  Created by Praveena Arni on 4/5/23.
//

import Foundation

class Wordle{
    var allWords = [String]()
    var char1: Character = "A"
    var char2: Character = "A"
    var char3: Character = "A"
    var char4: Character = "A"
    var char5: Character = "A"
    
  func getFiles() {
      
        if let startWordsURL = Bundle.main.url(forResource: "dictionary", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL){
                allWords = startWords.components(separatedBy: "\n")
            }
        }
            if allWords.isEmpty {
                allWords = ["noWords"]
            }
    }
    
    func createUsableWords(){
        
        allWords.forEach { word in
            print("\(word)")
            if word.count == 5 {
                SharedData.usableWords.append(word)
        }
   }
        print(SharedData.usableWords)
}
    
    func createCorrectWord(){
        let random = Int.random(in: 1...SharedData.usableWords.count-1)
        SharedData.correctWord = "\(SharedData.usableWords[random])"
        print(SharedData.correctWord)
        
        for i in 0...4{
            SharedData.correctArray[i] = SharedData.correctWord[SharedData.correctWord.index(SharedData.correctWord.startIndex, offsetBy: i)]
        }
        print("CorrectWord Array: \(SharedData.correctArray)")
    }
    
    func getLettersOfCorrectWord() {
      
    }
    
    func addWords(){
        for i in 0...4 {
            SharedData.CharArray[i] = SharedData.storedString[SharedData.storedString.index(SharedData.storedString.startIndex, offsetBy: i)]
            print(SharedData.CharArray[i])
        }
        print("CharArray: \(SharedData.CharArray)")
    }
    
    func checkWords(){
        for i in 0...4{
            if SharedData.CharArray[i] == SharedData.correctArray[i]{
              print("True")
        }
            else{
                print("False")
            }
        }
    }
}
