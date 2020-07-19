//
//  Array+Only.swift
//  Memorize
//
//  Created by HASEUNG JEON on 2020/07/19.
//  Copyright © 2020 HASEUNG JEON. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
