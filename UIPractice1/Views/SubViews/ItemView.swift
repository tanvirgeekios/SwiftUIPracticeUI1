
//  Item.swift
//  UIPractice1
//
//  Created by MD Tanvir Alam on 3/12/20.


import SwiftUI

struct ItemView: View {
    var item:Item
    var body: some View {
        VStack(){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width/3, height: 150)
            HStack(){
                Text(item.title)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                Text(item.price)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.vertical,10)
                    .padding(.horizontal,8)
            }
        }.padding(12)
        .background(item.color)
        .cornerRadius(20)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(  image: "dounot", title: "Sweet Soda", price: "85", color:Color.Mytheme.color1, detailes: "This is the most sweet Soda ever"))
    }
}
