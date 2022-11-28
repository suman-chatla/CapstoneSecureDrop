//
//  Firebase Models.swift
//  SecureDrop_BasicVersion
//
//  Created by Suman Chatla on 10/19/22.
//

import Foundation


struct DeliveryOwner: Codable {
    var user: String?
    var pinAuthInfo: PinAuthInfo?
    var pastOrders: [DeliveryOrder]?
    var currentOrders: [DeliveryOrder]?
}

struct PinAuthInfo: Codable {
    var mPin: Int?
}

struct DeliveryOrder: Codable {
    var deliveryPin: Int?
    var orderID: String?
    var orderDetails: String?
    var vendorDetails: String?
}

enum DeliveryOrderStatus: Int { case unfulfilled = 0, inProgress, fulfilled }