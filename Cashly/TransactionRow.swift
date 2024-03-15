//
//  TransactionRow.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import Foundation
import SwiftUI
import SwiftUIFontIcon

struct TransactionRow: View {
    var transaction: Transaction
    
    var body: some View{
        HStack(spacing: 20 ){
            // MARK: Transaction Category Icon
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color.iconColor.opacity(0.3))
                .frame(width: 44, height: 44)
                .overlay{
                    FontIcon.text(.awesome5Solid(code: .icons), fontsize: 24, color: Color.iconColor)
                }
            
            VStack(alignment: .leading, spacing: 6){
                // MARK: Transaction Merchant
                Text(transaction.merchant)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(1)
                
                // MARK: Transaction Category
                
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                // MARK: Transaction Date
                Text(transaction.dateParsed, format: .dateTime.year().month().year())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            Spacer()
            
            // MARK: Transaction Amount
            Text(transaction.signedAmount, format: .currency(code: "USD"))
                .bold()
                .foregroundColor(transaction.type == TransactionType.credit.rawValue ? Color.text : .primary
                )
        }
    }
}


#Preview {
    TransactionRow(transaction: transactionPreviewData)
}
