import UIKit
class ViewController: UIViewController {
    
    @IBOutlet var helpButton: UIButton!
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var inputWord: UITextField!
    var storedText: String = ""
    var textString: String = ""
    @IBOutlet var newInput: Shake!
    let wordle = Wordle()
    @IBOutlet var deadLettersDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Printing")
        wordle.getFiles()
        wordle.createUsableWords()
        wordle.createCorrectWord()
        wordle.getLettersOfCorrectWord()
    }
    @IBAction func inputFunction(_ sender: Any) {
        if let correctWord = newInput.text{
            SharedData.numOfWordsEntered = SharedData.numOfWordsEntered + 1
            print("Number of Words Entered: \(SharedData.numOfWordsEntered)")
            if SharedData.numOfWordsEntered < 7
            {
                newInput.text = ""
                SharedData.storedString = correctWord
                print("StoredString: \(SharedData.storedString)")
                if SharedData.usableWords.contains(correctWord) {
                    print("The array does contain this")
                    wordle.addWords()
                    displayWordle()
                }
                else {
                    print("The array doesn't contain this")
                            newInput.shake()
                            newInput.text = ""
                     SharedData.numOfWordsEntered = SharedData.numOfWordsEntered - 1
                }}
            else{
                print("Out of Tries")
            }}}
    
    @IBAction func helpButtonSelected(_ sender: Any) {
        self.performSegue(withIdentifier: "help", sender: self)
    }
    @IBAction func settingButtonSelected(_ sender: Any) {
        self.performSegue(withIdentifier: "settingPage", sender: self)
   }
    @IBOutlet var LabelConection: [UILabel]!
    func displayWordle(){
        let startInd = ((SharedData.numOfWordsEntered - 1) * 5)
        assign(start: startInd)
        placeColor(start: startInd)
    }
    func assign(start: Int) {
        var j = 0
        for i in start...(start+4) {
        LabelConection[i].text = String(SharedData.CharArray[j])
            j = j+1
        } }
    func placeColor(start: Int){
        deadLettersDisplay.text = ""
        var j = start
        for i in 0...4{
            var flag = false
            for k in 0...4 {
                if SharedData.CharArray[i] == SharedData.correctArray[k]{
                        flag = true
                    if (i == k) {
                        LabelConection[j].backgroundColor = UIColor.systemGreen
                        SharedData.greenArray.append(Character(LabelConection[j].text!))
                        print("Green Array: \(SharedData.greenArray)")
                        if SharedData.greenArray.count == 5{
                            self.performSegue(withIdentifier: "winner", sender: self)
                        }
                        
                    } else if (SharedData.greenArray.contains(Character(LabelConection[j].text!)) == false)
                    {
                        LabelConection[j].backgroundColor = UIColor.systemYellow
                        SharedData.greenArray.removeAll()
                        
                    }}}
            if (flag == false) {
                deadLettersDisplay.text = " \(textString) \(LabelConection[j].text!)"
                textString = deadLettersDisplay.text!
            }
            j = j+1
        } }
}
