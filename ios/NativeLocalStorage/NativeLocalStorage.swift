//
//  NativeLocalStorage.swift
//  SwiftTM079
//
//  Created by Riccardo Cipolleschi on 20/03/2025.
//
import Foundation


@objc public class NativeLocalStorage: NSObject {
  let userDefaults = UserDefaults(suiteName: "local-storage");
  
  
  @objc public func getItem(for key: String) -> String? {
    return userDefaults?.string(forKey: key)
  }
  
  @objc public func setItem(for key: String, value: String) {
    userDefaults?.set(value, forKey: key)
  }
  
  @objc public func removeItem(for key: String) {
    userDefaults?.removeObject(forKey: key)
  }
  
  @objc public  func clear() {
    userDefaults?.dictionaryRepresentation().keys.forEach { removeItem(for: $0) }
  }
}
