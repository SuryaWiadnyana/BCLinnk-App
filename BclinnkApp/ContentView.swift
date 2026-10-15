import SwiftUI

struct ContentView: View {
    @State private var isLoading: Bool = true
    @State private var canGoBack: Bool = false
    @State private var canGoForward: Bool = false
    @State private var loadError: String? = nil

    private let targetURL = URL(string: "http://cm.bclinnk.com/")!

    var body: some View {
        ZStack(alignment: .top) {
            if let errorMsg = loadError {
                // Tampilan error jika tidak ada koneksi internet
                VStack(spacing: 20) {
                    Image(systemName: "wifi.exclamationmark")
                        .font(.system(size: 56))
                        .foregroundColor(.gray)
                    Text("Tidak Dapat Terhubung")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(errorMsg)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    Button("Coba Lagi") {
                        loadError = nil
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.blue)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(.systemBackground))
            } else {
                // WebView utama
                WebViewContainer(
                    url: targetURL,
                    isLoading: $isLoading,
                    canGoBack: $canGoBack,
                    canGoForward: $canGoForward,
                    loadError: $loadError
                )
                .ignoresSafeArea(edges: .bottom)

                // Loading bar tipis di atas
                if isLoading {
                    ProgressView()
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.blue))
                        .frame(height: 2)
                }
            }
        }
        .statusBarHidden(false)
    }
}

#Preview {
    ContentView()
}

