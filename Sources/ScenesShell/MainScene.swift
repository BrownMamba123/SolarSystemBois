import Scenes

class MainScene : Scene{
    let backgroundLayer : Layer
    let interactionLayer : Layer

    init(){
        backgroundLayer = BackgroundLayer()
        interactionLayer = InteractionLayer()

        super.init(name:"Main")
        
        insert(layer:backgroundLayer, at:.front)
        insert(layer:interactionLayer, at:.front)
    }
}
