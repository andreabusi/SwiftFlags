//
//  ContentView.swift
//  SwiftFlagsSampleApp
//
//  Created by Andrea Busi on 13/03/26.
//

import SwiftUI
import SwiftFlags

struct ContentView: View {
    
    let countries: [String] = ["Italia", "France", "Spain", "Germany", "United States", "Japan"]
    
    // MARK: - View
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) { country in
                    HStack {
                        Text("\(country) \(SwiftFlags.flag(for: country), default: "?")")
                            .font(.headline)
                    }
                }
                
                
            }
            .navigationTitle("SwiftFlags")
        }
    }
}

#Preview {
    ContentView()
}
