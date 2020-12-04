//
//  DetailView.swift
//  UIPractice1
//
//  Created by MD Tanvir Alam on 4/12/20.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack{
            //Left Arrow
            HStack(){
                Button(action: {
                    present.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 40,weight:.heavy))
                        .foregroundColor(.black)
                    Spacer(minLength: 0)
                })
            }.padding([.horizontal, .top],10)
            //Headline
            VStack(alignment:.leading){
                Text("Party Dounot")
                    .font(.system(size:45,weight:.heavy))
                    .foregroundColor(Color.Mytheme.color1)
                Text("$36")
                    .font(.system(size:35,weight:.heavy))
                    .foregroundColor(Color.black).opacity(0.8)
            }
            .padding(.top)
            //Body
            VStack{
                HStack{
                    VStack{
                        Image("dounot")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(height:100)
                        Text("Available to order")
                            .fontWeight(.bold)
                            .foregroundColor(.black).opacity(0.6)
                            .frame(height:50)
                        Text("129")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .padding(.horizontal,10)
                            .padding(.vertical,8)
                            .background(Color.Mytheme.color2)
                            .cornerRadius(10)
                    }
                    Image("dounot")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:UIScreen.main.bounds.width/2)
                        .offset(y: -20)
                        .padding(.top, -25)
                }
                Text("This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text This is a long text ")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black.opacity(0.6))
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                
                HStack(){
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(Color.Mytheme.color2)
                        .clipShape(Circle())
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack(){
                            Text("Go to order dounot")
                                .font(.title2)
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                            Image(systemName: "chevron.right")
                                .font(.system(size: 25,weight:.heavy))
                                .foregroundColor(.white)
                                
                        }
                        .padding(.horizontal,10)
                        .padding(.vertical)
                        .background(Color.Mytheme.color2)
                        .clipShape(Capsule())
                    })
                }.padding()
                Spacer(minLength: 0)
            }.padding()
            .background(
                Color.Mytheme.color1
                    .clipShape(CustomShape())
            )
            
          Spacer()
        }.padding(.horizontal,20)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
