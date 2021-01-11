//
//  EnigmaStructure.swift
//  Sphinx
//
//  Created by E Ggt on 20/07/2020.
//  Copyright © 2020 Emmanuelle GOUGELET. All rights reserved.
//

import SwiftUI
import UIKit


struct EnigmaObject : Hashable, Codable, Identifiable {
        
        var id : String
        var title: String
        var formule: String
        var solution: String
        var aide: String
        

    }
