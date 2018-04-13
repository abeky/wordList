//
//  AddViewController.swift
//  WordList
//
//  Created by 阿部一真 on 2018/04/13.
//  Copyright © 2018年 阿部一真. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var englishTextFiled: UITextField!
    @IBOutlet var japaneseTextFiled: UITextField!
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveDate = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        if saveDate.array(forKey: "WORD") != nil {
            wordArray = saveDate.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveWord() {
        let wordDictionary = ["english": englishTextFiled.text!, "janapese": japaneseTextFiled.text!]
        
        wordArray.append(wordDictionary)
        saveDate.set(wordArray, forKey: "WORD")
        
        let alert = UIAlertController(
            title: "保存完了",
            message: "単語の登録が完了しました",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        self.present(alert, animated: true, completion: nil)
        englishTextFiled.text = ""
        japaneseTextFiled.text = ""
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
