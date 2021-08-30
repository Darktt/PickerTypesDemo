//
//  PickerStyles.swift
//  PickerTypes
//
//  Created by Eden on 2021/8/30.
//

import SwiftUI

public enum PickerStyles
{
    case `default`(_ style: DefaultPickerStyle)
    
    case inline(_ style: InlinePickerStyle)
    
    case menu(_ style: MenuPickerStyle)
    
    case segmented(_ style: SegmentedPickerStyle)
    
    case wheel(_ style: WheelPickerStyle)
}

public extension PickerStyles
{
    static let allStyles: Array<PickerStyles> = [.default(DefaultPickerStyle()), .inline(InlinePickerStyle()), .menu(MenuPickerStyle()), .segmented(SegmentedPickerStyle()), .wheel(WheelPickerStyle())]
}

extension PickerStyles: CustomStringConvertible
{
    public var description: String {
        
        var description: String = ""
        
        switch self {
        
        case .default:
            description = "default"
        
        case .inline:
            description = "inline"
            
        case .menu:
            description = "menu"
            
        case .segmented:
            description = "segmented"
            
        case .wheel:
            description = "wheel"
        }
        
        return description
    }
}

extension PickerStyles: Identifiable
{
    public var id: String {
        
        self.description
    }
}
