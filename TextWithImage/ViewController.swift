//
//  ViewController.swift
//  TextWithImage
//
//  Created by Soham Bhattacharjee on 27/03/16.
//  Copyright © 2016 Soham Bhattacharjee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDescription:UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.appendImageWithText()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Append UIImage with texts
    func appendImageWithText() {
        
        let paragraph = "I feel that rather than your birthday, what we are experiencing at this time is a divine celebration, because we could not get a better (icon) than having you with us. Thank you for being such a good friend and for giving me your shoulder every time I have needed it. The party friends are many, the real are few. Happy birthday, you are amazing, man"
        let targetString = "(icon)"
        self.lblDescription?.setImageWithText(paragraph, targetString: targetString)
    }
}

