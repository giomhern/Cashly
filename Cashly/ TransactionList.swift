//
//   TransactionList.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/15/24.
//

import SwiftUI

struct _TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    var body: some View {
        VStack{
            List{
                ForEach(Array(transactionListVM.groupTransactionByMonth()), id:\.key){
                    month, transactions in
                    Section {
                        ForEach(transactions){
                            transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }.navigationTitle("Transactions")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView{
        _TransactionList()
    }.environmentObject(TransactionListViewModel())
}
