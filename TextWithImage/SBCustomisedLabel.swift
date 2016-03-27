//
//  SBCustomisedLabel.swift
//  TextWithImage
//
//  Created by Soham Bhattacharjee on 27/03/16.
//  Copyright © 2016 Soham Bhattacharjee. All rights reserved.
//

import UIKit

extension UILabel {
    
    func setImageWithText(paragraph:NSString, targetString:NSString) {
        
        self.text = paragraph as String
        
        let range: Range<String.Index> = self.text!.rangeOfString(targetString as String)!
        let startIndex: Int = self.text!.startIndex.distanceTo(range.startIndex)
        let attributedString = NSMutableAttributedString(string: paragraph as String)
        
        
        let image = UIImage(named: "present")
        let attachment = NSTextAttachment()
        attachment.image = image
        attachment.bounds = CGRectMake(0, 0, attachment.image!.size.width, attachment.image!.size.height);
        
        let attrStrWithImage:NSAttributedString = NSAttributedString(attachment: attachment)
        
        let font = self.font
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.Center
        paragraphStyle.paragraphSpacing = 0.5 * font.lineHeight
        paragraphStyle.lineSpacing = 0.5 * font.lineHeight
        
        let foregroundColor = UIColor.redColor()
        
        attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSMakeRange(0, paragraph.length))
        attributedString.addAttribute(NSFontAttributeName, value: font!, range: NSMakeRange(0, paragraph.length))
        attributedString.addAttribute(NSForegroundColorAttributeName, value: foregroundColor, range: NSMakeRange(0, paragraph.length))
        
        
        attributedString.replaceCharactersInRange(NSMakeRange(startIndex, targetString.length), withAttributedString: attrStrWithImage)
        
        self.attributedText = attributedString
    }
}