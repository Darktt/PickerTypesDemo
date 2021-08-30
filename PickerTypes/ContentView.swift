//
//  ContentView.swift
//  PickerTypes
//
//  Created by Eden on 2021/8/30.
//

import SwiftUI

struct ContentView: View
{
    private var pickerStyles: Array<PickerStyles> = PickerStyles.allStyles
    
    var body: some View
    {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: true) {
                
                LazyVStack {
                    
                    ForEach(self.pickerStyles) {
                        
                        self.cell(with: $0)
                    }
                }
            }
            .navigationTitle("Picker Types")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private extension ContentView
{
    func cell(with pickerStyle: PickerStyles) -> some View
    {
        HStack {
            
            NavigationLink(destination: self.destination(pickerStyle)) {
                
                Text(pickerStyle.description)
                    .foregroundColor(.black)
                    .padding()
            }
            
            Spacer()
        }
    }
    
    func destination(_ pickerStyle: PickerStyles) -> some View
    {
        switch pickerStyle {
        
        case .default(let style):
            return PickerStyleView(style).anyView
            
        case .inline(let style):
            return PickerStyleView(style).anyView
            
        case .menu(let style):
            return PickerStyleView(style).anyView
            
        case .segmented(let style):
            return PickerStyleView(style).anyView
            
        case .wheel(let style):
            return PickerStyleView(style).anyView
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
