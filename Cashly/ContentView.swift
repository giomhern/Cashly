//
//  ContentView.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading, spacing: 24){
                    // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }.background(Color.backgroundColor)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem{
                        Image(systemName: "bell.badge")
                            .symbolRenderingMode(.palette)
                            .foregroundColor(Color.iconColor)
                    }
                }
        }.navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
