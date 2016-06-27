//
//  PageViewController.swift
//  PageDemoController
//
//  Created by xoyal on 25/06/16.
//  Copyright © 2016 xoyal. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imageSlideView: UIImageView!
    
    var pageIndex: Int = 0
    var strTitle: String!
    var strPhotoName: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        imageSlideView.image = UIImage(named: strPhotoName)
        lblTitle.text = strTitle
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
