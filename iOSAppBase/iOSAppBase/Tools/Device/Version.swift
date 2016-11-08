//
//  Version.swift
//  Device
//
//  Created by Lucas Ortis on 30/10/2015.
//  Copyright © 2015 Ekhoo. All rights reserved.
//

public enum Version: String {
    /*** iPhone ***/
    case iPhone2G
    case iPhone3G
    case iPhone3GS
    case iPhone4
    case iPhone4S
    case iPhone5
    case iPhone5C
    case iPhone5S
    case iPhone6
    case iPhone6Plus
    case iPhone6S
    case iPhone6SPlus
    case iPhoneSE
    case iPhone7
    case iPhone7Plus
    
    /*** iPad ***/
    case iPad1
    case iPad2
    case iPadMini
    case iPad3
    case iPad4
    case iPadAir
    case iPadMini2
    case iPadAir2
    case iPadMini3
    case iPadMini4
    case iPadPro
    
    /*** iPod ***/
    case iPodTouch1Gen
    case iPodTouch2Gen
    case iPodTouch3Gen
    case iPodTouch4Gen
    case iPodTouch5Gen
    case iPodTouch6Gen
    
    /*** Simulator ***/
    case simulator
    
    /*** Unknown ***/
    case unknown
    
    public var pixels: (w: Int, h: Int) {
        switch self {
        case .iPhone2G, .iPhone3G, .iPhone3GS:
            return (320, 480)
        case .iPhone4, .iPhone4S :
            return (640, 960)
        case .iPhone5, .iPhone5C, .iPhone5S:
            return (640, 1136)
        case .iPhone6:
            return (750, 1334)
        case .iPhone6Plus:
            return (1242, 2208)
        case .iPhone6S:
            return (750, 1334)
        case .iPhone6SPlus:
            return (1242, 2208)
        case .iPhoneSE, .iPhone7:
            return (750, 1334)
        case .iPhone7Plus:
            return (1242, 2208)
        case .simulator:
            let w = Int(UIScreen.main.nativeBounds.width)
            let h = Int(UIScreen.main.nativeBounds.height)
            return (w, h)
        default:
            return (0,0)
        }
    }
    
    public var points: (w: Int, h: Int) {
        switch self {
        case .iPhone2G, .iPhone3G, .iPhone3GS:
            return (320, 480)
        case .iPhone4, .iPhone4S :
            return (320, 480)
        case .iPhone5, .iPhone5C, .iPhone5S:
            return (320, 568)
        case .iPhone6:
            return (375, 667)
        case .iPhone6Plus:
            return (414, 736)
        case .iPhone6S:
            return (375, 667)
        case .iPhone6SPlus:
            return (414, 736)
        case .iPhoneSE, .iPhone7:
            return (375, 667)
        case .iPhone7Plus:
            return (414, 736)
        case .simulator:
            let w = Int(UIScreen.main.bounds.width)
            let h = Int(UIScreen.main.bounds.height)
            return (w, h)
        default:
            return (0,0)
        }
    }
    
    public var PPI: Int {
        switch self {
        case .iPhone2G, .iPhone3G, .iPhone3GS:
            return (163)
        case .iPhone4, .iPhone4S:
            return (326)
        case .iPhone5, .iPhone5C, .iPhone5S:
            return (326)
        case .iPhone6:
            return (326)
        case .iPhone6Plus:
            return (401)
        case .iPhone6S:
            return (326)
        case .iPhone6SPlus:
            return (401)
        case .iPhoneSE, .iPhone7:
            return (326)
        case .iPhone7Plus:
            return (401)
        case .simulator:
            return (326)
        default:
            return (0)
        }
    }
}
