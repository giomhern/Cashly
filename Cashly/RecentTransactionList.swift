//
//  RecentTransactionList.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import SwiftUI

struct RecentTransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack{
            HStack{
                // MARK: Header Title
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                // MARK: Header Link
                NavigationLink{
                    _TransactionList()
                } label: {
                    HStack(spacing: 4){
                        Text("See All")
                        Image(systemName: "chevron.right")
                            
                    }
                    .foregroundColor(Color.textColor)
                }
            }.padding(.top)
            
            
            // MARK: Recent Transaction List
            ForEach(Array(transactionListVM.transactions.prefix(5).enumerated()), id: \.element) {
                index, transaction in
                TransactionRow(transaction: transaction)
                Divider()
                    .opacity(index == 4 ? 0.0: 0.8)
                
            }
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 5)
    }
}

#Preview {
    RecentTransactionList().environmentObject(TransactionListViewModel())
}
