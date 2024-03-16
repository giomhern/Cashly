//
//  ContentView.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var demoData: [Double] = [8, 4, 2, 6, 8, 12, 9, 2]
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading, spacing: 24){
                    // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    
                    // MARK: Chart
                    CardView {
                        VStack {
                            ChartLabel("$900", type: .title).padding(.horizontal, 5)
                            LineChart()
                        }
                        .background(Color.systemBackground)
                        
                        
                    }.data(demoData)
                        .chartStyle(ChartStyle(backgroundColor: Color.systemBackground, foregroundColor: ColorGradient(Color.icon.opacity(0.4), Color.icon)))
                    .frame(height: 300)
                    
                    // MARK: Recent Transactions List
                    RecentTransactionList()
                    
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
            .accentColor(.primary)
    }
}

#Preview {
    ContentView().environmentObject(TransactionListViewModel())
}
