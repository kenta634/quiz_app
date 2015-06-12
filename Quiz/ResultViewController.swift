//
//  ResultViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    
    @IBOutlet weak var resultlabel :UILabel!
    @IBOutlet weak var resultlabel1 :UIImageView!
    @IBOutlet weak var resultlabel2 :UILabel!
    let ResultPic0: UIImage! = UIImage(named: "countup.png")
    let ResultPic1: UIImage! = UIImage(named: "countup_out.png")

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        resultlabel2.text = String(format: "%d/5問正解",correctAnswer);
        
        
        if(correctAnswer == 5){
            resultlabel.text = "完璧だ！"
            resultlabel1.image = ResultPic0
        }else{
            resultlabel.text = "本番もダメでしょう"
            resultlabel1.image = ResultPic1
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
