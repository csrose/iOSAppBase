//
//  Data+Extension.swift
//  iOSAppBase
//
//  Created by 杨晓冬 on 11/2/16.
//  Copyright © 2016 杨晓冬. All rights reserved.
//

import Foundation

public extension Data {
    
    static func dataFromJson(fileName: String) -> Data? {
        guard let path = Bundle.main.path(forResource: fileName, ofType: "json") else {
            return nil
        }
        
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: ReadingOptions.mappedIfSafe)
            return data
        } catch let error as NSError {
            //assert(false,"Data from JSON file error: \(error)")
            printLog("Data from JSON file error: \(error)")
            return nil
        }
    }
    
}
