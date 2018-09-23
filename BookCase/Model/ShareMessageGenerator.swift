//
//  ShareMessageGenerator.swift
//  BookCase
//
//  Created by akhil mantha on 21/08/2018.
//  Copyright © 2018 akhil mantha. All rights reserved.
//

import Foundation

struct ShareMessageGenerator {
    
    // MARK: Properties
    let book: Book
    
    enum Message {
        case Info(String)
        case Error(String, String)
    }
    
    // MARK: - Generate share Message
    var shareMessage: Message {
        guard let shareURL = book.bookInformation.googleBookURL else {
            return .Error("Missing Preview URL", "Sorry, there is no URL available to share for this book.")
        }
        return .Info("Book Recommendation: \n \n\(book.bookInformation.title) \n\n\(shareURL)")
    }
    
}
