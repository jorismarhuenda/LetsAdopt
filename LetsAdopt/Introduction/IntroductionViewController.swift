//
//  IntroductionViewController.swift
//  LetsAdopt
//
//  Created by marhuenda joris on 13/02/2022.
//

import UIKit
import LZViewPager

class IntroductionViewController: UIViewController {
    
    @IBOutlet weak var viewPager: LZViewPager!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var viewControllers: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initViewPager()
    }
    
    func initViewPager() {
        viewPager.hostController = self
        
        let landingPage1VC = self.storyboard?.instantiateViewController(withIdentifier: "LandingPage1VC") as! LandingPage1VC
        let landingPage2VC = self.storyboard?.instantiateViewController(withIdentifier: "LandingPage2VC") as! LandingPage2VC
        let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeVC
        
        landingPage1VC.delegate = self
        landingPage2VC.delegate = self
    
        viewControllers = [landingPage1VC, landingPage2VC, welcomeVC]
        
        viewPager.reload()
    }
}
