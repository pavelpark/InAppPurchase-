//
//  ViewController.swift
//  InAppPurchase
//
//  Created by Pavel Parkhomey on 9/20/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var removeAdsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: PurchaseManager.instance.IAP_REMOVE_ADS) == nil {
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
        } else {
            removeAdsBtn.removeFromSuperview()
            bannerView.removeFromSuperview()
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func removeAdsPressed(_ sender: Any) {
        PurchaseManager.instance.purchaseRemoveAds()
    }
    
}

