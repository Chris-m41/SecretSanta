//
//  MyListView.swift
//  SecretSanta
//
//  Created by Christian Martinez on 9/13/22.
//

import SwiftUI

struct ListData: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let link: String
}

struct MyListView: View {
    
    let data = [
        ListData(name: "Apple watch Ultra", link: "https://www.apple.com/shop/buy-watch/apple-watch-ultra"),
        ListData(name: "MacBook Pro M2", link: "https://www.apple.com/shop/buy-mac/macbook-pro/13-inch"),
        ListData(name: "iPhone 14 Pro", link: "https://www.att.com/buy/phones/apple-iphone-14-pro.html"),
        ListData(name: "Splatoon 3", link: "https://www.gamestop.com/video-games/nintendo-switch/products/splatoon-3---nintendo-switch/335585.html?utm_source=google&utm_medium=feeds&utm_campaign=%24PLA_%24Brand&utm_id=13975133214&gclid=CjwKCAjw1ICZBhAzEiwAFfvFhBY8COjEFXDDVJ9lwa0EihUW8pHis29kWZKZlzNyb2kjpr6-czDzRxoCXA4QAvD_BwE&gclsrc=aw.ds"),
        ListData(name: "Legend of Zelda: Tears of the Kingdom", link: "https://www.nintendo.com/store/products/the-legend-of-zelda-tears-of-the-kingdom-switch/"),
        ListData(name: "Magic Keyboard", link: "https://www.bestbuy.com/site/apple-magic-keyboard/6474573.p?skuId=6474573&ref=212&loc=1&extStoreId=351&ref=212&loc=1&gclid=CjwKCAjw1ICZBhAzEiwAFfvFhAOopjfOMkRZ3vIq5mMjY9SmVWe48dN3AaK4T37Als1VI7j3aMfHHBoCGBMQAvD_BwE&gclsrc=aw.ds"),
        ListData(name: "Magic Mouse", link: "https://www.bestbuy.com/site/apple-magic-mouse-white/6474585.p?skuId=6474585"),
        ListData(name: "Cybertruck", link: "https://www.tesla.com/cybertruck")
    ] // need to create function that checks if https is present
    // link will break if https is missing
    //TODO: Add an edit and delete row object
    var body: some View {
        NavigationStack {
            List(data){ data in
                Link(data.name, destination: URL(string: data.link)!)
            }
            .navigationTitle("My List")
        }

    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView()
    }
}
