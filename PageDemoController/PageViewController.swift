//
//  PageViewController.swift
//  PageDemoController
//
//  Created by xoyal on 25/06/16.
//  Copyright © 2016 xoyal. All rights reserved.
//

import UIKit
import QuartzCore


class PageViewController: UIViewController {

   
    @IBOutlet weak var imageBulb: UIImageView!

    @IBOutlet weak var imageCalender: UIImageView!
    @IBOutlet weak var imageCar: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var imageCheckmark: UIImageView!
    @IBOutlet weak var btnCheckmark: UIButton!
    @IBOutlet weak var btnPage: UIButton!
    var pageIndex: Int = 0
    var strTitle: String!
    var strPhotoName: String!
    
    let animationDuration: NSTimeInterval = 1.0
    let switchingInterval: NSTimeInterval = 3
    override func viewDidLoad() {
        super.viewDidLoad()
       
     
     //   lblTitle.text = strTitle
        
        // Do any additional setup after loading the view.
    }

    
    
    
    override func viewWillAppear(animated: Bool)
    {
        self.btnPage.frame=CGRect(x: 50, y: 667+30, width: 100, height: 50)
        
        
        
        ///************** 1st view animation ***********************/////
        
        
        if (pageIndex==0)
        {
            self.view .backgroundColor=UIColor .init(colorLiteralRed: 52/255.0, green: 152/255.0, blue: 219/255.0, alpha: 1.0);
            
            let duration = 0.5 // animation will take 1.0 seconds
            
            let delay : NSTimeInterval = 0.0
            
            // *******************Animation For the Text *************************//
            
            
            let options1 = UIViewAnimationOptions.TransitionCrossDissolve
            
            self.lblTitle.frame=CGRect(x: 50, y: self.view.frame.origin.y-500, width: 100, height: 30)
            UIView.animateWithDuration(duration, delay: delay, options: options1, animations:
                {
                    UIView .animateWithDuration(1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 3.0, options:options1, animations: {
                        self.lblTitle.text="My View"
                        self.lblTitle.frame=CGRect(x: 50, y: 400, width: 100, height: 50)
                        
                        //self.lblTitle.center.x=self.view.frame.width/2;
                        
                        
                        }, completion: nil)
                }, completion: { finished in
                    
                    
                    self.lblTitle.transform = CGAffineTransformMakeScale(0.1, 0.1)
                    
                    UIView.animateWithDuration(1.0,
                        delay: 0,
                        usingSpringWithDamping: 0.3,
                        initialSpringVelocity: 1.0,
                        options: UIViewAnimationOptions.AllowUserInteraction,
                        animations: {
                            self.lblTitle.transform = CGAffineTransformIdentity
                        }, completion: nil)
            })
            
            
            
            
            
        }
        
        ////// *************************** 2nd View animaton ****************************///
        
        if (pageIndex==1)
        {
            self.btnCheckmark.frame=CGRectMake(80, 80,60, 60)
            
            
            self.btnPage.setTitle("I See", forState: UIControlState.Normal)
            
            
            
            ///// *************** Button Checkmark Animation *******************//
            
            UIView .animateWithDuration(2.0, delay: 0, options: UIViewAnimationOptions.TransitionFlipFromTop, animations:
                {
                    self.btnCheckmark.layer.borderWidth = 5
                    self.btnCheckmark.layer.borderColor = UIColor.init(colorLiteralRed: 72/255.0, green: 201/255.0, blue: 176/255.0, alpha: 1.0).CGColor
                    self.btnCheckmark.layer.cornerRadius = 30
                    
                    let border:CABasicAnimation = CABasicAnimation(keyPath: "borderWidth")
                    border.fromValue = 10
                    border.toValue = 30
                    border.duration = 1.0
                    
                    self.btnCheckmark.layer.borderWidth = 30
                    
                    self.btnCheckmark.layer.addAnimation(border, forKey: "border")
                    
                    
                    
                },completion: { finished in
                                            
                self.imageCheckmark.transform = CGAffineTransformMakeScale(0.1, 0.1)
                                            
                UIView.animateWithDuration(1.0,delay: 0,
                                                usingSpringWithDamping: 0.3,
                                                initialSpringVelocity: 1.0,
                                                options: UIViewAnimationOptions.AllowUserInteraction,
                                                animations: {
                                                    self.imageCheckmark.hidden=false;
                                                    self.imageCheckmark.transform = CGAffineTransformIdentity
                                                }, completion: nil)
                                            
                                            
            })
            
            
            /////////////// ******** Image of Calender Up to Down Animation **********************////
            
            
            self.imageCalender.frame=CGRectMake(0 , self.view.frame.origin.y-100, 150, 150);
            self.imageCalender.hidden=false;
            
            let options = UIViewAnimationOptions.TransitionCurlDown
            let delay : NSTimeInterval = 0.0
            let duration = 1.0
            UIView.animateWithDuration(duration, delay: delay, options: options, animations:
                {
                    self.imageCalender.frame=CGRectMake(10, 600, 150, 150);
                }, completion: { finished in
                    
                    
            })
            
            /////////////// ******** Image of Car Left to right Animation **********************////

            self.imageCar.frame=CGRectMake(self.view.frame.origin.x-100, 275, 150  , 150);
            
            self.imageCar.hidden=false;
            
            let options1 = UIViewAnimationOptions.TransitionFlipFromLeft
            let delay1 : NSTimeInterval = 0.0
            let duration1 = 1.0
            UIView.animateWithDuration(duration1, delay: delay1, options: options1, animations:
                {
                    self.imageCar.frame=CGRectMake(30, 275, 150, 150);
                }, completion: { finished in
                    
                    
            })
            
            
            /////////////// ******** Label from right to left Animation **********************////

            self.lblTitle.frame=CGRectMake(self.view.frame.origin.x+500, 400, 150  , 150);
            
            self.lblTitle.hidden=false;
            
            let options2 = UIViewAnimationOptions.TransitionFlipFromRight
            let delay2 : NSTimeInterval = 0.0
            let duration2 = 1.0
            UIView.animateWithDuration(duration2, delay: delay2, options: options2, animations:
                {
                    
                    self.lblTitle.text="Just Choose How Many and set frequency for delivery "
                    self.lblTitle.font = self.lblTitle.font.fontWithSize(22)
                    self.lblTitle.frame=CGRectMake(30, 400, 150, 150);
                }, completion: { finished in
                    
                    
            })
            
            
        }
        
        
        if (pageIndex==2)
            
        {
            
            
            self.imageCalender.frame=CGRectMake(0 , self.view.frame.origin.y-100, 150, 150);
            self.imageCalender.hidden=false;
            
            let options = UIViewAnimationOptions.TransitionCurlDown
            let delay : NSTimeInterval = 0.0
            let duration = 1.0
            UIView.animateWithDuration(duration, delay: delay, options: options, animations:
                {
                    self.imageCalender.frame=CGRectMake(10, 600, 150, 150);
                    
                    self.imageCalender.image=UIImage (named: "barcode.png")
                }, completion: { finished in
                    
                    
            })
            
            self.imageBulb.frame=CGRectMake(20 , self.view.frame.origin.y+500, 200, 200);
            self.imageBulb.hidden=false;
            
            let options1 = UIViewAnimationOptions.TransitionCurlUp
            let delay1 : NSTimeInterval = 0.0
            let duration1 = 1.0
            UIView.animateWithDuration(duration1, delay: delay1, options: options1, animations:
                {
                    self.imageBulb.frame=CGRectMake(10, 300, 200, 200);
                    
                    
                }, completion: { finished in
                    
                    
            })
            
            
            
            self.lblTitle.frame=CGRectMake(0, 200, 150  , 150);
            
            self.lblTitle.hidden=false;
            
            let options2 = UIViewAnimationOptions.TransitionCrossDissolve
            let delay2 : NSTimeInterval = 0.0
            let duration2 = 1.0
            UIView.animateWithDuration(duration2, delay: delay2, options: options2, animations:
                {
                    
                    self.lblTitle.text="Just Choose How Many and set frequency for delivery "
                    self.lblTitle.font = self.lblTitle.font.fontWithSize(22)
                    self.lblTitle.frame=CGRectMake(30, 400, 150, 150);
                }, completion: { finished in
                    
                    
            })
            
            
            
            
        }
        
        
        if (pageIndex==3)
            
        {
        
            

        }
        
        
        
        ///***************Animation For Bottom Button *******************//
        
        
        let options = UIViewAnimationOptions.TransitionCurlUp
        let delay : NSTimeInterval = 0.0
        let duration = 0.5
        
        
        UIView.animateWithDuration(duration, delay: delay, options: options, animations:
            {
                // any changes entered in this block will be animated
                
                self.btnPage.frame=CGRect(x: 50, y: 550, width: 100, height: 50)
                
                
            }, completion: { finished in
                
                
                // any code entered here will be applied
                // once the animation has completed
                
                self.btnPage.transform = CGAffineTransformMakeScale(0.1, 0.1)
                
                UIView.animateWithDuration(1.0,
                    delay: 0,
                    usingSpringWithDamping: 0.3,
                    initialSpringVelocity: 3.0,
                    options: UIViewAnimationOptions.AllowUserInteraction,
                    animations: {
                        self.btnPage.transform = CGAffineTransformIdentity
                    }, completion: nil)
        })
        
        

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
    @IBAction func btnNextViewTapped(sender: AnyObject)
    {
       

    }
}
