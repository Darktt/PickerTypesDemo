//
//  ViewExtension.swift
//
//  Created by Dasrktt on 21/8/2.
//  Copyright © 2021 Darktt. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension View
{
    // MARK: - Properties -
    
    var anyView: AnyView {
        
        AnyView(self)
    }
    
    // MARK: - Methods -
    
    @ViewBuilder
    func linearGradient(colors: Array<Color>, startPoint: UnitPoint, endPoint: UnitPoint, ignoreSafeArea: Bool = false) -> some View
    {
        let gradient = Gradient(colors: colors)
        let linearGradient = LinearGradient(gradient: gradient, startPoint: startPoint, endPoint: endPoint)
        
        if ignoreSafeArea {
            
            if #available(iOS 14.0, OSX 11.0, *) {
                
                self.background(linearGradient.ignoresSafeArea())
            } else {
                
                self.background(linearGradient)
            }
        } else {
            
            self.background(linearGradient)
        }
    }
    
    @ViewBuilder
    func angularGradient(colors: Array<Color>, center: UnitPoint, ignoreSafeArea: Bool = false) -> some View
    {
        let gradient = Gradient(colors: colors)
        let angularGradient = AngularGradient(gradient: gradient, center: center)
        
        if ignoreSafeArea {
            
            if #available(iOS 14.0, OSX 11.0, *) {
                
                self.background(angularGradient.ignoresSafeArea())
            } else {
                
                self.background(angularGradient)
            }
        } else {
            
            self.background(angularGradient)
        }
    }
    
    @ViewBuilder
    func radialGradient(colors: Array<Color>, center: UnitPoint, startRadius: CGFloat, endRadius: CGFloat, ignoreSafeArea: Bool = false) -> some View
    {
        let gradient = Gradient(colors: colors)
        let radialGradient = RadialGradient(gradient: gradient, center: center, startRadius: startRadius, endRadius: endRadius)
        
        if ignoreSafeArea {
            
            if #available(iOS 14.0, OSX 11.0, *) {
                
                self.background(radialGradient.ignoresSafeArea())
            } else {
                
                self.background(radialGradient)
            }
        } else {
            
            self.background(radialGradient)
        }
    }
}
