//
//  OrderItem.swift
//  SimpleMarket
//
//  Created by Kariny on 24/04/21.
//

import Foundation

struct OrderItem {
    let id: Int
    let product: Product?
    var quantity: Int

    var unitValue: Double {
        product?.price ?? 0
    }

    var totalValue: Double {
        Double(quantity) * unitValue
    }

    init(from realmOrderItem: RealmOrderItem) {
        id = realmOrderItem.id
        quantity = realmOrderItem.quantity
        if let realmProduct = realmOrderItem.product {
            product = Product(from: realmProduct)
        } else {
            product = nil
        }
    }
}
