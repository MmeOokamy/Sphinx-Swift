//
//  EnigmaRow.swift
//  Sphinx
//
//  Created by E Ggt on 21/07/2020.
//  Copyright © 2020 Emmanuelle GOUGELET. All rights reserved.
//

import SwiftUI
import UIKit

struct EnigmaRow: View {

    // Squelette de la structure EnigmaListView
    //numero + titre + boutton de nav pour chaque enigmes
    //variable listeEnigmes
    
    var enigme: EnigmaObject
    
        
 
    
        var body: some View {
        
            NavigationLink (destination: SphinxView(enigme: enigme) ){
            
                HStack {
            
                    //numero id enigme
                    Text(enigme.id)
                        //titre de l'enigme
                Text(enigme.title)
                Spacer()
//                Button(action: {}) {
//                    Text("go")
//                }.buttonStyle(PlainButtonStyle())
                  

            }
            
            }

    }
}
