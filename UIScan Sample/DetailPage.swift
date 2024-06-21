//
//  HomePage.swift
//  UIScanSampleiOS
//
//

import SwiftUI

struct DetailPage: View {
    
    @State var inputName = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 390, height: 260)
                        .background(
                            Image("detail_watch")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 390, height: 260)
                                .clipped()
                        )
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        // miss point padding bottom
                        //.padding(.bottom, Constants.SpaceXl)
                        .padding(.bottom, 40)

                    
                    // Body 2/Medium
                    Text("TechTrack Elite")
                        .font(
                            Font.system(size: 24).weight(.semibold)
                        )
                        .foregroundColor(Constants.TextBody)
                        .padding(.horizontal, Constants.SpaceMd)
                        .padding(.bottom, Constants.SpaceLg)

                    Text("$15.99")
                        .font(
                            Font.system(size: 20)
                        )
                        .foregroundColor(.black)
                        .padding(.horizontal, Constants.SpaceMd)
                        .padding(.bottom, Constants.SpaceLg)

                    HStack(spacing: Constants.SpaceSm) {
                        
                        colorType(
                            text: "White",
                            baseColor: Constants.ColorBlackWhiteWhite,
                            bgColor: Constants.TextBody,
                            storokeColor: Constants.ColorGray500
                        )
                        
                        colorType(
                            text: "Black",
                            baseColor: Constants.TextBody,
                            bgColor: Color.white,
                            storokeColor: Constants.ColorGray300
                        )
                    }
                    .padding(.horizontal, Constants.SpaceMd)
                    .padding(.bottom, Constants.SpaceLg)

                    Button(action: {
                    }) {
                        HStack {
                            HStack(alignment: .center, spacing: 0) {
                                Image("select_bag")
                                    .frame(width: Constants.SpaceLg, height: Constants.SpaceLg)
                                    .padding([.trailing], 8)
                                
                                
                                // Body 1/bold
                                Text("Add to cart")
                                    .font(
                                        Font.system(size: 16)
                                            .weight(.bold)
                                    )
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Constants.TextBody)
                            }
                            .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56, alignment: .center)
                            // miss point backgroundcolor
//                            .background(Constants.ColorYellow400)
                            .background(Color(red: 0.94, green: 0.83, blue: 0.1))
                            .overlay(
                                RoundedRectangle(cornerRadius: Constants.RoundMd)
                                    .inset(by: 0.5)
                                    .stroke(Constants.ColorYellow400, lineWidth: 1)
                            )
                            .cornerRadius(Constants.RoundMd)
                        }
                    }
                    .padding(.horizontal, Constants.SpaceMd)
                }
                .padding(.horizontal, Constants.SpaceMd)
                // miss point padding bottom
                //.padding(.bottom, Constants.SpaceXl)
                .padding(.bottom, 40)
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .background(Constants.ColorGray100)
                
                VStack(alignment: .leading, spacing: Constants.SpaceLg) {
                    // Heading 2/semibold
                    HStack(alignment: .center, spacing: 0) {
                        Text("Product information")
                            .font(
                                Font.system(size: 20)
                                    .weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.05, green: 0.1, blue: 0.19))
                        
                    }
                    .padding(0)
                    .frame(width: 343, alignment: .leading)
                    
                    // miss poiint lineSpacing
                    Text("Introducing our latest innovation, the TechTrack Elite - where technology meets elegance. This smartwatch seamlessly integrates cutting-edge features with sleek design. Monitor your heart rate, sleep patterns, and physical activity in real time, empowering you with personalized fitness insights.")
                        .font(Font.system(size: 14))
                        .lineSpacing(14)
                        .foregroundColor(Constants.TextBody)
                        .frame(width: 343, alignment: .topLeading)
                }
                .padding(.horizontal, Constants.SpaceMd)
                .padding(.vertical, Constants.SpaceXl)
                .frame(width: 374, alignment: .topLeading)
                
                
                
                divider()
                    .padding(.horizontal, Constants.SpaceMd)
                
                HStack(alignment: .center, spacing: 0) {
                    // Space Between
                    Text("Review (86)")
                        .font(
                            Font.system(size: 20)
                                .weight(.semibold)
                        )
                        .foregroundColor(Constants.TextBody)
                        .padding(.leading, Constants.SpaceMd)
                    Spacer()
                    // Alternative Views and Spacers
                    Image("average_star")
                        .frame(width: Constants.SpaceLg, height: Constants.SpaceLg)
                        .padding(.trailing, 4)
                    // Heading 2/semibold
                    Text("4.6")
                        .font(
                            Font.system(size: 20)
                                .weight(.semibold)
                        )
                        .foregroundColor(Constants.TextBody)
                        .padding(.trailing, Constants.SpaceMd)
                    
                }
                .padding(.top, Constants.SpaceXl)
                .padding(.bottom, Constants.SpaceMd)
                .padding(.horizontal, Constants.SpaceMd)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        reviewitem(reviewerName: "Jhon Doeg",timestamp: "Today, 12:30 pm", reviewrank: 5, reviewCommnet: "TechTrack Elite exceeded my expectations! Sleek design, accurate health tracking, and intuitive interface. A must-have for tech enthusiasts!")
                        reviewitem(reviewerName: "Elena Carter",timestamp: "1 month ago", reviewrank: 3, reviewCommnet: "Impressive performance! The TechTrack Elite offers seamless connectivity, precise fitness tracking, and a stylish look. Highly recommend it!")
                        reviewitem(reviewerName: "Nathan Bennett",timestamp: "2 month ago", reviewrank: 4, reviewCommnet: "TechTrack Elite is a game-changer! Its vibrant display, long battery life, and user-friendly features make it the best smartwatch on the market.")
                    }
                }

                                
                Button(action: {
                }) {
                    HStack {
                        HStack(alignment: .center, spacing: 0) {
                            // Body 1/bold
                            Text("See All Review")
                                .font(
                                    Font.system(size: 16)
                                    //miss point weight
                                    //    .weight(.bold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Constants.TextBody)
                        }
                        .frame(maxWidth: .infinity, minHeight: 56, maxHeight: 56, alignment: .center)
                        .cornerRadius(Constants.RoundMd)
                        .overlay(
                            RoundedRectangle(cornerRadius: Constants.RoundMd)
                                .inset(by: 0.5)
                                .stroke(Constants.TextBody, lineWidth: 1)
                        )
                    }
                    .padding(.horizontal, Constants.SpaceMd)
                    .padding(.top, Constants.SpaceLg)
                    .padding(.bottom, Constants.SpaceXl)
                }
                .padding(.horizontal, Constants.SpaceMd)
                
                VStack(spacing: 0) {
                    
                    categoryName(title: "you might also like")
                        .padding([.top], Constants.SpaceXl)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: Constants.SpaceMd) {
                            item(itemName: "TechTrack Elite", itemImage: "item_watch", isNew: true)
                                .padding([.leading], Constants.SpaceMd)
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
            }
        }
        .navigationTitle("Detail Product")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(
                    action: {
                        dismiss()
                    }, label: {
                        Image("chevron-left")
                    }
                ).tint(.orange)
            }
            ToolbarItem() {
                Button(action: {
                }) {
                    Image("action")
                }
            }
            ToolbarItem() {
                Button(action: {
                }) {
                    Image("heart")
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

struct colorType: View {
    var text = ""
    var baseColor = Constants.ColorBlackWhiteWhite
    var bgColor = Constants.TextBody
    var storokeColor = Constants.ColorGray500
    
    var body: some View {
        HStack(alignment: .center, spacing: Constants.SpaceXxs){
            Image("")
                .frame(width: 18, height: 18)
                .background(baseColor)
                .overlay(
                    Rectangle()
                        .stroke(storokeColor, lineWidth: 1)
                )
                .cornerRadius(12)
            
            // Body 1/semibold
            Text(text)
                .font(
                    Font.system(size: 16).weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(baseColor)
        }
        .padding(Constants.SpaceSm)
        .background(bgColor)
        .cornerRadius(Constants.RoundSm)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.RoundSm)
                .inset(by: 0.5)
                .stroke(storokeColor, lineWidth: text != "White" ? 1 : 0)
        )
    }
}
struct reviewitem: View {
    var reviewerName = ""
    var timestamp = ""
    var reviewrank = 5
    var reviewCommnet = ""
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.SpaceMd) {
            HStack(alignment: .center, spacing: Constants.SpaceMd) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: Constants.SpaceXxl, height: Constants.SpaceXxl)
                    .background(
                        Image("Reviewer")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            // miss pointo frame width height
                            //.frame(width: 40, height: 40)
                            .frame(width: 44, height: 44)
                            .clipped()
                    )
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .cornerRadius(40)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack(alignment: .center, spacing: 0) {
                        // Space Between
                        // Body 1/semibold
                        Text(reviewerName)
                            .font(
                                Font.system(size: 16).weight(.semibold)
                            )
                            .foregroundColor(Color(red: 0.05, green: 0.1, blue: 0.19))
                        Spacer()
                        // Alternative Views and Spacers
                        // Body 4/semibold
                        Text(timestamp)
                            .font(
                                Font.system(size: 11).weight(.semibold)
                            )
                            .foregroundColor(Constants.ColorGray500)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    HStack(alignment: .top, spacing: 4) {
                        ForEach(1..<6) { index in
                            if index <= reviewrank {
                                Image("rank_star")
                            } else {
                                Image("unrank_star")
                            }
                        }
                    }

                }
                .padding(0)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(.horizontal, Constants.SpaceMd)
            .frame(maxWidth: .infinity, alignment: .leading)

            // Body 2/Regular
            Text(reviewCommnet)
                .font(Font.system(size: 14))
                .lineSpacing(8)
                .foregroundColor(Constants.TextBody)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading], 64)
                .padding([.trailing], Constants.SpaceMd)
            
        }
        .padding(Constants.SpaceMd)
        .frame(maxWidth: .infinity, alignment: .topLeading)
    }
}

#Preview {
    DetailPage()
}
