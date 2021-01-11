//
//  SphinxView.swift
//  Sphinx
//
//  Created by E Ggt on 20/07/2020.
//  Copyright © 2020 Emmanuelle GOUGELET. All rights reserved.
//

import SwiftUI
import UIKit


struct SphinxView: View {
    
    
    
    //pour la zone de texte
   // @Binding var texte: String
    
    //verti text"enigme" / compteur d'enigme / pop-up validée ou non => possibilité de retry ou retour ou aide
    
    var enigme: EnigmaObject
    //userdefault des bonnes reponses
//  @EnvironmentObject var setting: UserAnswer

//va faire disparaitre le boutton de l'enigmes
  //  var collectedAnswer: Bool {setting.goodAnswer.contains(self.enigme)}
    
    @State private var showingAlert = false
    @State private var showingHelp = false
    @State private var answer = ""
    @State private var validateAnswer: String = ""
    

    
    //ma fonction de reponse
    //outlet / objet
 
    
    var body: some View {
         
        ZStack {
            //fond
            Image("backgroundBlue")
                          .resizable()
                          .edgesIgnoringSafeArea(.all)
        
            VStack {
                // colonne
                
                HStack { //Titre
                    
                    Text(enigme.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                    
                }
                
                Spacer()
                //Enigmes
                Text(enigme.formule)
                    .padding(100)
                    .background((LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .trailing, endPoint: .leading)).opacity(0.8))
                    .cornerRadius(20)
                    .shadow(radius: 10)
                
                Spacer()
                //zone de texte textfield
                TextField("Votre Réponse", text: $answer )
                    .background(Color.white)
                    .frame(width:300, height: 50)
                
                
                Spacer()
// text qui change
                Text(validateAnswer)
                // teste du bouton

                
                
                HStack {

                    Button(action: { self.showingHelp = true}) {
                        Text("aide")

                    }.shadow(radius: 20)
                    .alert(isPresented: $showingHelp) {
                        Alert(title: Text("aide"), message: Text(enigme.aide), dismissButton: .default(Text("Compris !")))
                                                   }
                                                   .opacity(0.8)
                                                   .padding()
                                                   .foregroundColor(.white)
                                                   .background((LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .trailing, endPoint: .leading)).opacity(0.8))
                                                   .cornerRadius(15.0)
                                                   .shadow(radius: 20)


                //boutton de validation
                    
                    Button(action: { if self.answer == self.enigme.solution{
                       //affiche la page GG
                           

                        //affiche GG
                    //   self.validateAnswer = "GG"
                        
                        } else {
                        //affiche la page tryagainview
                   //     TryAgainView()
                        //affiche try again
                        self.validateAnswer = "Essaye encore"
                    } }) {
                        Text("Valider!")
                         
                                        
                                    }.shadow(radius: 20)
                                   
                                    .opacity(0.8)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background((LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .trailing, endPoint: .leading)).opacity(0.8))
                                    .cornerRadius(15.0)
                                    .shadow(radius: 20)

                                }
                                
                Spacer()
            }
        }
       
        
        }
    }


