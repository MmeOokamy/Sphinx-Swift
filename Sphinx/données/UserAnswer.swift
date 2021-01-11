//
//  UserAnswer.swift
//  Sphinx
//
//  Created by E Ggt on 27/07/2020.
//  Copyright © 2020 Emmanuelle GOUGELET. All rights reserved.
//

import Foundation
import SwiftUI

class UserAnswer: ObservableObject {
    

    @Published var goodAnswer : [EnigmaObject] {
        didSet {
            UserDefaults.standard.save(goodAnswer, for: "answers")
        }
    }
    
    init(goodAnswer: [EnigmaObject]) {
           
           self.goodAnswer = [ ]
        
       }


}
