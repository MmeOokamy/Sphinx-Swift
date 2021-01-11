//
//  ContentView.swift
//  Sphinx
//
//  Created by E Ggt on 20/07/2020.
//  Copyright © 2020 Emmanuelle GOUGELET. All rights reserved.
//

import SwiftUI
import UIKit


struct ContentView: View {
   
    init(){ //solution de background
       UITableView.appearance().backgroundColor = .clear
       UITableViewCell.appearance().backgroundColor = .clear
       UITableView.appearance().tableFooterView = UIView()}
    
    

    
    
    

    
    var body: some View {
        NavigationView {
            
        ZStack {
            //fond
            Image("backgroundBlue")
                          .resizable()
                          .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                //image
                Image("iconSphinx")
                .resizable()
                .aspectRatio(contentMode: .fit) //.scaledToFit()
                .frame(width: 200.0, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                
                 
          
                //Menu
            NavigationLink(destination: EnigmaListView(enigme: enigmesData)){
                    Text("Enigmes")
                     .padding()
                     .background(Color.white)
                     .cornerRadius(8)
                     .shadow(radius: 20)
            }
            Spacer()
            
               //  autre bouton
           NavigationLink(destination: WhiteView()){
                               Text("WhiteView")
                                .padding()
                                .background(Color.white)
                                .cornerRadius(8)
                                .shadow(radius: 20)
                       }
                  Spacer()
                 NavigationLink(destination: GGView()){
                                              Text("gg vue")
                                               .padding()
                                               .background(Color.white)
                                               .cornerRadius(8)
                                               .shadow(radius: 20)
                                      }
                Spacer()
                Spacer()
            }
          
        }
            
            
//        TabView() {
//
//            ContenteViewBis ()
//             .tabItem {
//                Image(systemName: "moon")
//                 Text("plop")
//         }
//
//            EnigmaListView (enigme: enigmesData)
//                .tabItem {
//                    Image(systemName: "sun.max")
//                    Text("Enigmes")
//            }
            
        }
        
    }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
