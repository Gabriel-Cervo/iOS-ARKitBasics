//
//  ViewController.swift
//  ARKitBasics
//
//  Created by Joao Gabriel Dourado Cervo on 08/09/21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        let box = boxAnchor.steelBox
        let boxEntity = box?.children[0] as! ModelEntity
        
        var material = SimpleMaterial()
        material.baseColor = .color(.red)
        
        boxEntity.model?.materials = [material]
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
