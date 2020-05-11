import Scenes
import Igis
import Foundation

class BackgroundLayer : Layer{

     let backgroundImageEntity : ImageEntity
 
    init() {
        guard let url = URL(string:"https://wallpaperaccess.com/full/399813.jpg") else {
            fatalError("Failed to create URL for BackgroundLayer")
        }
        
        backgroundImageEntity = ImageEntity(sourceURL:url, renderMode:.destinationPoint(Point()))
        
        super.init(name:"Background")
        
        insert(entity:backgroundImageEntity, at:.front)
    }
}
