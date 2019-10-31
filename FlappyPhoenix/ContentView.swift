//
//  ContentView.swift
//  FlappyPhoenix
//
//  Created by Richard Taylor on 31/10/2019.
//  Copyright © 2019 Moocode Ltd. All rights reserved.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                WebView()
            }
            .navigationBarTitle(Text("Flappy Phoenix"))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView  {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = false
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let liveView = "https://flappy-phoenix.herokuapp.com/game"
        if let url = URL(string: liveView) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
