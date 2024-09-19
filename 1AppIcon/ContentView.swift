import SwiftUI

struct ContentView: View {
    let icons: [IconItem] = [
        IconItem(name: "Yellow Folder", imageName: "appicon_folderyellow"),
        IconItem(name: "Document Folder", imageName: "appicon_folderdocuments")
    ]
    
    @State private var columns: Int = 3
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Background image with blur effect
                Image("backgroundImage") // Replace with your image name
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                // Blur effect overlay
                BlurEffectView(material: .sidebar)
                    .edgesIgnoringSafeArea(.all)
                
                // Main content
                ScrollView {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: columns), spacing: 10) {
                        ForEach(icons, id: \.imageName) { icon in
                            VStack {
                                Image(icon.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width / CGFloat(columns) - 10)
                                    .onTapGesture {
                                        setAppIcon(iconName: icon.imageName)
                                    }
                                Text(icon.name)
                                    .font(.caption)
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding()
                }
                .onAppear {
                    // Initialize the columns
                    calculateColumns(width: geometry.size.width)
                }
                .onChange(of: geometry.size.width) { newWidth in
                    // Recalculate the display columns
                    calculateColumns(width: newWidth)
                }
            }
        }
    }
    
    // Calculate the display columns
    private func calculateColumns(width: CGFloat) {
        let minColumnWidth: CGFloat = 150 // Minimum size of a column
        columns = max(1, Int(width / minColumnWidth)) // Calculation
    }
    
    // Set app icon for macOS
    private func setAppIcon(iconName: String) {
        print("Setting app icon to: \(iconName)")
        // Logic to change the app icon goes here
    }
}

// SwiftUI view wrapper for NSVisualEffectView to apply blur effects
struct BlurEffectView: NSViewRepresentable {
    var material: NSVisualEffectView.Material
    
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.material = material
        view.blendingMode = .behindWindow
        view.state = .active
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        nsView.material = material
    }
}

#Preview {
    ContentView()
}
