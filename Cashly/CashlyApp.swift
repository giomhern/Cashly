//
//  CashlyApp.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import SwiftUI

@main
struct CashlyApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
