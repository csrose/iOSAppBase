//
//  PrintLog.swift
//  iOSAppBase
//
//  Created by 杨晓冬 on 11/5/16.
//  Copyright © 2016 杨晓冬. All rights reserved.
//

import Foundation

// MARK: - Print Log
public func printLog<T>(_ message: T, file: String = #file, method: String = #function, line: Int = #line) {
    #if DEBUG
        let fileName = file.components(separatedBy: "/").last!.components(separatedBy: ".").first!
        print("\(Date.timeNow) \(fileName).\(method)[\(line)] : -[\(message)]")
    #endif
}
