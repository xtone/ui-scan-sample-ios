//
//  HomePage.swift
//  UIScanSampleiOS
//
//

import SwiftUI
import SwiftAutoScreenShot

struct HomePageView: View {
    
    @State private var inputName = ""
    @State private var isShowingView: Bool = false
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 0) {
                    ZStack(alignment: .leading) {

                        TextField("Search", text: $inputName)
                            .padding(.all)
                            .padding(.leading, 20)
                            .background(Constants.ColorGray300)
                            .cornerRadius(Constants.RoundXs)
                            .padding(.horizontal, Constants.SpaceMd)
                            .padding(.vertical, Constants.SpaceLg)
                        
                        Image("magnifying_glass")
                            .background(Constants.ColorGray300)
                            .offset(x: 28)

                    }
                    ScrollViewReader { proxy in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack() {
                                NavigationLink(destination: DetailPage()) {
                                    carouselImage(image: "cal1").id(1)
                                    carouselImage(image: "cal2").id(2)
                                    carouselImage(image: "cal3").id(3)
                                }
                            }
                        }
                        .onAppear {
                            proxy.scrollTo(2)
                        }
                    }
                    categoryName(title: "Categories")
                        .padding([.top], 32)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        // miss point 28
                        HStack(spacing: 48) {
                            category(image:"Food", name: "Foods")
                            category(image:"Gift", name: "Gifts")
                            category(image:"Interior", name: "interior")
                            category(image:"Fashion", name: "Fashion")
                            category(image:"Book", name: "Book")
                        }
                    }
                    .padding([.leading], Constants.SpaceMd)
                    .padding([.top], Constants.SpaceLg)
                    .padding([.bottom], Constants.SpaceXl)
                    
                    VStack(spacing: 0) {
                        
                        categoryName(title: "Featured Product")
                            .padding([.top], Constants.SpaceXl)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: Constants.SpaceMd) {
                                item(itemName: "TechTrack Elite", itemImage: "item_watch", isNew: false)
                                item(itemName: "UrbanGlide Shoes", itemImage: "item_shoes", isNew: false)
                                item(itemName: "TechTrack Elite", itemImage: "item_bag", isNew: false)
                                
                            }
                        }
                        .frame(height: 250)
                        .padding([.leading], Constants.SpaceMd)
                        .padding([.top], Constants.SpaceLg)
                        .padding([.bottom], Constants.SpaceXl)
                        
                        categoryName(title: "Best Sellers")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: Constants.SpaceMd) {
                                item(itemName: "TechTrack Elite", itemImage: "item_watch", isNew: false)
                                item(itemName: "UrbanGlide Shoes", itemImage: "item_shoes", isNew: false)
                                item(itemName: "TechTrack Elite", itemImage: "item_bag", isNew: false)
                                
                            }
                        }
                        .frame(height: 250)
                        .padding([.leading], Constants.SpaceMd)
                        .padding([.top], Constants.SpaceLg)
                        .padding([.bottom], Constants.SpaceXl)
                        
                        categoryName(title: "New Arrivals")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: Constants.SpaceMd) {
                                item(itemName: "TechTrack Elite", itemImage: "item_watch", isNew: true)
                                item(itemName: "UrbanGlide Shoes", itemImage: "item_shoes", isNew: true)
                                item(itemName: "TechTrack Elite", itemImage: "item_bag", isNew: true)
                                
                            }
                        }
                        .frame(height: 250)
                        .padding([.leading], Constants.SpaceMd)
                        .padding([.top], Constants.SpaceLg)
                        .padding([.bottom], Constants.SpaceXl)
                        
                    }
                    .background(Constants.ColorGray100)
                    
                    categoryName(title: "Latest News", isLink: false)
                        .padding([.top], Constants.SpaceXl)
                    
                    ScrollView(.vertical) {
                        VStack(spacing: 0) {
                            newsItem(image: "news_1")
                            
                            missDivider()
                            
                            newsItem(image: "news_2")
                            
                            missDivider()
                            
                            newsItem(image: "news_3")
                        }
                    }
                    
                    Button(action: {
                    }) {
                        HStack {
                            HStack(alignment: .center, spacing: 0) {
                                // Body 1/bold
                                Text("See All")
                                    .font(
                                        Font.system(size: 16)
                                            .weight(.bold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Constants.TextBody)
                            }
                            .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56, alignment: .center)
                            .cornerRadius(Constants.RoundMd)
                            .overlay(
                                // miss point cornerRadius Constants.RoundMd 57
                                RoundedRectangle(cornerRadius: 57)
                                    .inset(by: 0.5)
                                    .stroke(Constants.TextBody, lineWidth: 1)
                            )
                        }
                    }
                    .padding(Constants.SpaceMd)
                }
            }
            .navigationTitle("Shop Ease")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem() {
                    Button(action: {
                    }) {
                        Image("bell")
                            // miss point frame
                            .resizable()
                            .frame(width: 28, height: 28)
                    }
                }
            }
        }
        .suAutoScreenShot { screenShotMaker in
            screenShotMaker.takeScreenShotWithScroll(outerTopOffset: 180,
                                                     outerBottomOffset: 0,
                                                     innerTopOffset: 0,
                                                     innerBottomOffset: 80)
        }
    }
    
}

struct categoryName: View {
    var title = ""
    var isLink = true
    
    var body: some View {
        HStack(alignment: .center) {
            // Space Between
            // Heading 2/semibold
            Text(title)
                .font(
                    // miss point font size
                    Font.system(size: 24)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.05, green: 0.1, blue: 0.19))
            Spacer()
            // Alternative Views and Spacers
            // Body 2/Link
            if isLink {
                // miss point weight color
                Text("See All")
                    .font(Font.system(size: 14).weight(.bold))
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(Constants.TextBody)
                    
            }
        }
        .padding(.horizontal, 8)
        .frame(width: 375, alignment: .center)
    }
}

struct carouselImage: View {
    var image = ""
    var body: some View {
        
        HStack(alignment: .top, spacing: 0) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 311, height: 150)
                .background(
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 311, height: 150)
                        .clipped()
                )
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(Constants.RoundMd)
        }
        .frame(width: 311, height: 150, alignment: .center)
        //.shadow(color: .black.opacity(0.15), radius: 4, x: 0, y: 4)
        .padding(.leading, 16)
    }
}

struct category: View {
    var image = ""
    var name = ""
    
    var body: some View {
        VStack(spacing: 0) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 56, height: 56)
                .clipped()
            
            Spacer(minLength: 8)
            // Body 2/Regular
            Text(name)
                .font(Font.system(size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(Constants.TextBody)
        }
    }
}

struct item: View {
    var itemName = ""
    var itemImage = ""
    var isNew = false
    var frme_width = 156.0
    var body: some View {
        
        //miss point frame width 156
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .topLeading) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(maxWidth: .infinity, minHeight: 156, maxHeight: 156)
                    .background(
                        Image(itemImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: frme_width, height: 156)
                            .clipped()
                    )
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                
                if isNew {
                    HStack(alignment: .top, spacing: 8.0) {
                        // Body 4/semibold
                        Text("NEW")
                            .font(
                                Font.system(size: 11)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Constants.TextBody)
                    }
                    .padding(6)
                    .background(Constants.ColorYellow500)
                    .cornerRadius(Constants.RoundXs)
                    .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
                    .offset(x: Constants.SpaceXs, y: Constants.SpaceXs)
                }
            }
            
            VStack(alignment: .leading, spacing: 0) {
                // Body 2/Medium
                Text(itemName)
                    .font(
                        Font.system(size: 14)
                            // miss point weight
                            //.weight(.medium)
                    )
                    .foregroundColor(Constants.TextBody)
                
                Text("$16.75")
                    .font(
                        Font.system(size: 12)
                            .weight(.medium)
                    )
                    .foregroundColor(.black)
                    .padding(.vertical, 4)
                
                HStack() {
                    Image("star")
                        .frame(width: 16, height: 16)
                    Text("4.6")
                        .font(Font.system(size: 12))
                        .foregroundColor(Constants.ColorGray500)
                    
                    Spacer()
                    
                    Text("86 Reviews")
                        .font(Font.system(size: 12))
                        .foregroundColor(Constants.ColorGray500)
                }
                .padding(.horizontal, 0)
                .padding(.top, Constants.SpaceXs)
                .padding(.bottom, 0)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.horizontal, Constants.SpaceXs)
            .padding(.vertical, Constants.SpaceMd)
            .frame(maxWidth: .infinity, minHeight: 94, alignment: .topLeading)
        }
        .frame(width: frme_width, alignment: .topLeading)
        .background(Constants.ColorBlackWhiteWhite)
        .overlay(
            Rectangle()
                .inset(by: 0.5)
                .stroke(Constants.ColorGray200, lineWidth: 1)
        )
        // miss point cornerRadius
        //.cornerRadius(Constants.RoundMd)
        //.shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: 1)
        
    }
}

struct divider: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .foregroundColor(.clear)
                .background(Constants.ColorGray300)
        }
        .frame(width: .infinity, height: 0.5, alignment: .center)
        .padding(.horizontal, Constants.SpaceMd)
    }
}

struct missDivider: View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .foregroundColor(.clear)
                .background(Constants.ColorGray500)
        }
        .frame(width: .infinity, height: 1.5, alignment: .center)
        .padding(.horizontal, Constants.SpaceMd)
    }
}

struct newsItem: View {
    var title = ""
    var detail = ""
    var timestamp = false
    var image = ""
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                // Body 2/Medium
                Text("Exclusive Offer Inside!")
                    .font(
                        Font.system(size: 14)
                            .weight(.medium)
                    )
                    .foregroundColor(Constants.TextBody)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer(minLength: 12)
                
                Text("Dive into savings! Limited-time discounts on your favorite gadgets, fashion, and ...")
                    .font(Font.system(size: 12))
                    .foregroundColor(Color(red: 0.02, green: 0.03, blue: 0.05))
                
                Spacer(minLength: 4)
                
                Text("13 Jan 2023")
                    .font(Font.system(size: 12))
                    .foregroundColor(Constants.ColorGray500)
                
            }
            .frame(maxWidth: .infinity, maxHeight: 80,  alignment: .topTrailing)
            
            Spacer(minLength: Constants.SpaceMd)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 80, height: 80)
                .background(
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipped()
                )
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(Constants.RoundMd)
            
        }
        // miss point padding horizontal
        .padding(.leading, Constants.SpaceMd)
        .padding(.trailing, Constants.SpaceXs)
        .padding(.vertical, Constants.SpaceLg)
    }
}
struct Constants {
    static let RoundMd: CGFloat = 10
    
    static let RoundXs: CGFloat = 4
    static let RoundSm: CGFloat = 8
    
    static let SpaceXxs: CGFloat = 4
    static let SpaceXs: CGFloat = 8
    static let SpaceSm: CGFloat = 12
    static let SpaceMd: CGFloat = 16
    static let SpaceLg: CGFloat = 24
    static let SpaceXl: CGFloat = 32
    static let SpaceXxl: CGFloat = 32
    
    static let TextLink: Color = Color(red: 0.25, green: 0.32, blue: 0.71)
    static let TextBody: Color = Color(red: 0.13, green: 0.13, blue: 0.13)
    
    static let ColorGray100: Color = Color(red: 0.96, green: 0.96, blue: 0.96)
    static let ColorGray200: Color = Color(red: 0.93, green: 0.93, blue: 0.93)
    static let ColorGray300: Color = Color(red: 0.88, green: 0.88, blue: 0.88)
    static let ColorGray500: Color = Color(red: 0.62, green: 0.62, blue: 0.62)
    static let ColorYellow400: Color = Color(red: 1, green: 0.89, blue: 0.25)
    static let ColorYellow500: Color = Color(red: 1, green: 0.84, blue: 0.04)
    static let ColorBlackWhiteWhite: Color = .white
    
}

#Preview {
    ContentView()
}
