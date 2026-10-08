import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if let url = URL(string: "https://incertezalab-fqsgudg8qw9zvsxhchxagp.streamlit.app/?embed=true") {
            webView.load(URLRequest(url: url))
        }
    }
}

@main
struct IncertezaLabApp: App {
    var body: some Scene {
        WindowGroup {
            WebView()
                .ignoresSafeArea()
        }
    }
}
