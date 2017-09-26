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
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        <#code#>
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        <#code#>
    }
}
