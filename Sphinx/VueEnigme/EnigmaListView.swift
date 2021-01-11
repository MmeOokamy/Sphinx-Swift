//
//  EnigmaListView.swift
//  Sphinx
//
//  Created by E Ggt on 21/07/2020.
//  Copyright © 2020 Emmanuelle GOUGELET. All rights reserved.
//

import SwiftUI
import UIKit


struct EnigmaListView: View {
  
    
    let enigme: [EnigmaObject]
    init (enigme:[EnigmaObject]){
        self.enigme = enigme
    }
    
    var body: some View {
        
       
            
            ZStack {
                
                //fond
                       Image("backgroundBlue")
                                     .resizable()
                                     .edgesIgnoringSafeArea(.all)
                
                
                VStack {
               Text("Les Enigmes")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
       
                
                    //Appel de la list
                    
                List(enigmesData) { EnigmaObject in EnigmaRow( enigme: EnigmaObject)}
            }
        }
        }
    }


