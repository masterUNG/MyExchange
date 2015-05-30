//
//  ViewController.swift
//  MyExchange
//
//  Created by masterUNG on 5/28/2558 BE.
//  Copyright (c) 2558 masterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit
    let myFactor:Double = 0.031 // ค่าคงที่สำหรับตัวคูณ
    
    var douMoney:Double = 0     // double ที่รับค่าจาก TextField
    var douAnswer:Double = 0    // double ที่ได้จากการคำนวน
    var strAnswer:String = ""   // String ที่จะนำไปแสดงที่ label
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var thbTextField: UITextField!
    
    @IBAction func exchangeButton(sender: AnyObject) {
        
        //Get Value from TextField
        douMoney = Double(thbTextField.text.toInt()!)
        
        // ประมวลผล
        douAnswer = douMoney * myFactor
        
        // Create String จากสิ่งที่คำนวนได้
        strAnswer = String(stringInterpolationSegment: douAnswer)
        
        // แสดงสิ่งที่คำนวนได้
        answerLabel.text = strAnswer + " USD"
        
    }   // exchangeButton
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}   // MainClass

