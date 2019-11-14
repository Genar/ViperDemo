//
//  DummyServer.swift
//
//

import Foundation

class DummyFruits: NSObject {
    
    class func generateDataList() -> [[String: String]] {
        return [["name": "Orange","vitamin": "Vitamin C"],["name": "Watermelon","vitamin": "Vitamin A"], ["name": "Banana","vitamin": "Vitamin B6"], ["name": "Apple","vitamin": "Vitamin C"]]
    }
    
}
