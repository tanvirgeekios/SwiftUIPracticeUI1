//
//  HomeView.swift
//  UIPractice1
//
//  Created by MD Tanvir Alam on 2/12/20.
//

import SwiftUI

struct HomeView: View {
    @State var search = ""
    @State var goToDetaile = false
    var body: some View {
        VStack{
            //top
            ZStack{
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                    })
                    
                    Spacer()
                    
                    Image("profile")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                    
                }
                HStack(spacing:10){
                    Text("Top Choices")
                        .fontWeight(.heavy)
                        .foregroundColor(.gray)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 14, weight:.heavy))
                        .foregroundColor(.gray)
                }
            }
            .padding([.horizontal,.top])
            
            //search bar
            HStack{
                Image(systemName: "magnifyingglass")
                    .font(.title2)
                    .foregroundColor(.black)
                TextField("Find a tasty food", text: $search)
                    
            }.padding()
            Divider()
            ScrollView(){
                //first element
                HStack(alignment:.center) {
                    VStack(alignment:.leading){
                        Text("Party Dounut")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        Text("Everyone's favourite Dounut in Glaze")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black.opacity(0.6))
                        Button(action: {
                            goToDetaile.toggle()
                        }, label: {
                            HStack(alignment:.center){
                                Text("find out")
                                    .fontWeight(.heavy)
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 14,weight:.heavy))
                            }.foregroundColor(.black)
                        })
                       
                    }
                    Image("dounot")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:180)
                    
                }
                .padding(.horizontal,20)// inner padding
                
                //.frame(minWidth:0, maxWidth: .infinity,alignment: .topLeading)
                .background(Color.Mytheme.color1)
                .cornerRadius(20)
                .padding(.horizontal,15) // outer padding
                
                //Grid
                LazyVGrid(columns: Array(repeating:GridItem(.flexible(), spacing: 10), count:2), spacing:20){
                    
                    ForEach(items){ item in
                        ItemView(item: item)
                    }
                    
                }.padding(.top,10)
            }
        }.padding(.top,10)
        .fullScreenCover(isPresented: $goToDetaile, content: {
            DetailView()
        })
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
