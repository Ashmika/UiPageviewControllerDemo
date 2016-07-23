//
//  ViewController.swift
//  PageDemoController
//
//  Created by xoyal on 25/06/16.
//  Copyright © 2016 xoyal. All rights reserved.
//

import UIKit

class ViewController:UIPageViewController,UIPageViewControllerDataSource
{

    var arrPageTitle: NSArray = NSArray()
    var arrPagePhoto: NSArray = NSArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        arrPageTitle = ["Page1", "Page2", "Page3"];
        //arrPagePhoto = ["image1.png", "image2.jpg", "image3.jpeg","image4.jpg","image5.jpg","image6.jpg"];
        self.dataSource = self
        self.setViewControllers([getViewControllerAtIndex(0)] as [UIViewController], direction:
            UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        let pageContent: PageViewController = viewController as! PageViewController
        var index = pageContent.pageIndex
        if ((index == 0) || (index == NSNotFound))
        {
            return nil
        }
        index -= 1;
        return getViewControllerAtIndex(index)
    }
   
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        let pageContent: PageViewController = viewController as! PageViewController
        var index = pageContent.pageIndex
        if (index == NSNotFound)
        {
            return nil;
        }
        index += 1;
        if (index == arrPageTitle.count)
        {
            return nil;
        }
        return getViewControllerAtIndex(index)
    }
    func getViewControllerAtIndex(index: NSInteger) -> PageViewController
    {
        // Create a new view controller and pass suitable data.
        let pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! PageViewController
        
        
        
        pageViewController.strTitle = "\(arrPageTitle[index])"
       // pageViewController.strPhotoName = "\(arrPagePhoto[index])"
        pageViewController.pageIndex = index
        return pageViewController
    }
   
}

