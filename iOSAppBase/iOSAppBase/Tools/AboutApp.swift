//
//  AboutApp.swift
//  iOSAppBase
//
//  Created by 杨晓冬 on 10/21/16.
//  Copyright © 2016 杨晓冬. All rights reserved.
//

import Foundation

public class AboutApp: NSObject {
    
    static let instance = AboutApp()
    
    var name: String {
        guard let name = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") else {
            printLog("App Name is nil:CFBundleDisplayName")
            return String()
        }
        return name as! String
    }
    
    var version: String {
        guard let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] else {
            printLog("App Short Version is nil:CFBundleShortVersionString")
            return String()
        }
        return version as! String
    }
    
    var bundleName: String {
        guard let bundleName = Bundle.main.infoDictionary?["CFBundleName"] else {
            printLog("Bundle Name is nil:CFBundleName")
            return String()
        }
        return bundleName as! String
    }
    var bundleVersion: String {
        guard let bundleVersion = Bundle.main.infoDictionary?["CFBundleVersion"] else {
            printLog("Bundle Name is nil:CFBundleVersion")
            return String()
        }
        return bundleVersion as! String
    }
}
