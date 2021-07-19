//.statusBar(hidden: /*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
//  ContentView.swift
//  ARPlayground
//
//  Created by Stephen Schmitz on 7/14/21.CCA                     //

import SwiftUI
import RealityKit


// main class that displays ARViewContainer and fits full screen
struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

// UIView class displays viewable objects
struct ARViewContainer: UIViewRepresentable {
    
    // creates our UIView
    func makeUIView(context: Context) -> ARView {
        
        // makes ARView object
        let arView = ARView(frame: .zero)

        // creates Anchor and attaches .rcproject to anchor
        let anchor = try! ARPlayground.loadScene()

        // appends Anchor to scene (scene automatically created)
        arView.scene.anchors.append(anchor)

        // return ARView
        return arView
    }
    
    // updates UIView
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
