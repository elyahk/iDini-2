//
//  ItemDetail.swift
//  iDini 2
//
//  Created by eldorbek nusratov on 10/27/22.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    let item: MenuItem

    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Phote: " + item.photoCredit)
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()

            Button("Order This") {
                order.add(item: item)
            }
            .font(.headline)

            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example)
                .environmentObject(Order())
        }
    }
}
