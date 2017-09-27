//
//  PurchaseManager.swift
//  InAppPurchase
//
//  Created by Pavel Parkhomey on 9/26/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

import Foundation
import StoreKit

class PurchaseManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    static let instance = PurchaseManager()
    
    let IAP_REMOVE_ADS = "com.PavelPark.InAppPurchase.remove.ads"
    
    var productsRequest: SKProductsRequest!
    var product = [SKProduct]()
    
    func fetchProducts () {
        let productIds = NSSet(object: IAP_REMOVE_ADS) as! Set<String>
        productsRequest = SKProductsRequest(productIdentifiers: productIds)
        productsRequest.delegate = self
        productsRequest.start()
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
    }
}
