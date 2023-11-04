//
//  String.swift
//  acp_test
//
//  Created by 奈木野諭吉 on 2023/11/04.
//

import Foundation

extension String {
    func isValidEmail() -> Bool {
        //test@email.com -> true
        //test.com -> false
        
        let regex = try!NSRegularExpression(pattern:
                                                "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$"
                                                , options: .caseInsensitive)
        
        return regex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
    }
}
