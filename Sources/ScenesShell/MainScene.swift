import Scenes

class MainScene : Scene{
    let backgroundLayer : Layer
    let interactionLayer : Layer
    let ControlPanel : Layer

    init(){
        backgroundLayer = BackgroundLayer()
        interactionLayer = InteractionLayer()
        ControlPanel = ControlPanel()
        super.init(name:"Main")
        
        insert(layer:backgroundLayer, at:.front)
        insert(layer:interactionLayer, at:.front)
        insert(layer:ControlPanel, at:.front)
    }
}
