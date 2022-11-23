import ExpoModulesCore
import SwiftUI


class SwiftuiView: ExpoView {
    let content = GestureAnimation()
    lazy var host = UIHostingController(rootView: content)
    
    required init(appContext: AppContext? = nil) {
        super.init(appContext: appContext)
        setup()
    }

    private func setup() {
        host.view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(host.view)
        
        NSLayoutConstraint.activate([
            host.view.leadingAnchor.constraint(equalTo: leadingAnchor),
            host.view.trailingAnchor.constraint(equalTo: trailingAnchor),
            host.view.topAnchor.constraint(equalTo: topAnchor),
            host.view.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func layoutSubviews() {
        host.view.frame = bounds
    }
}

struct GestureAnimation: View {
    @State private var activeImage: ImageData = imageData[0]
    
    var body: some View {
        ZStack {
            ForEach(imageData) { data in
                Image(data.name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                    .opacity(data.id == activeImage.id ? 1 : 0)
                    .blur(radius: 25, opaque: true)
                    .animation(.easeIn, value: activeImage)
            }
            
            TabView(selection: $activeImage) {
                ForEach(imageData) { data in
                    Image(data.name)
                        .resizable()
                        .frame(width: 320, height: 450)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .shadow(color: .black.opacity(0.5), radius: 20)
                        .tag(data)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}
