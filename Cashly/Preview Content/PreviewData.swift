//
//  PreviewData.swift
//  Cashly
//
//  Created by Giovanni Maya on 3/14/24.
//

import Foundation


var transactionPreviewData = Transaction(id: 1, date: "01/24/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "debite", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)


// creates a list of repeating data from the given object created above

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
