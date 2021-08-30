//
//  PickerStyleView.swift
//  PickerTypes
//
//  Created by Eden on 2021/8/30.
//

import SwiftUI

public struct PickerStyleView<PickerStyle>: View where PickerStyle: SwiftUI.PickerStyle
{
    @State
    private var selectedData: String = "One"
    
    private var pickingDataes: Array<String> = ["One", "Two", "Three", "Four", "Five"]
    
    private let pickerStyle: PickerStyle
    
    private var navigationTitle: String {
        
        "\(PickerStyle.self)"
    }
    
    public var body: some View {
        
        VStack {
            
            Spacer()
            
            Picker("Pick a number.", selection: self.$selectedData) {
                
                ForEach(self.pickingDataes) {
                    
                    Text($0)
                }
            }.pickerStyle(self.pickerStyle)
            
            Spacer()
        }.navigationTitle(self.navigationTitle)
    }
    
    public init(_ pickerStyle: PickerStyle)
    {
        self.pickerStyle = pickerStyle
    }
}

struct PickerStyleView_Previews: PreviewProvider 
{
    static var previews: some View {
        
        PickerStyleView(MenuPickerStyle())
    }
}

extension String: Identifiable
{
    public var id: String {
        
        self
    }
}
