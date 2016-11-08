//
//  Date+Extension.swift
//  iOSAppBase
//
//  Created by 杨晓冬 on 10/21/16.
//  Copyright © 2016 杨晓冬. All rights reserved.
//

import Foundation

public extension Date {
    
    static var milliSeconds: TimeInterval {
        return Date().timeIntervalSince1970 * 1000
    }
    
    static var dateTimeNow: String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return formatter.string(from: date)
    }
    
    static var timeNow: String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.SSS"
        return formatter.string(from: date)
    }
    
    var week: String? {
        let myWeekday = Calendar.current.component(Calendar.Component.weekday, from: self)
        switch myWeekday {
        case 0:
            return "星期日"
        case 1:
            return "星期一"
        case 2:
            return "星期二"
        case 3:
            return "星期三"
        case 4:
            return "星期四"
        case 5:
            return "星期五"
        case 6:
            return "星期六"
        default:
            return nil
        }
    }
}
