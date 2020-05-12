import Igis
import Scenes 
import Foundation 

class ButtonLayout : RenderableEntity, EntityMouseDragHandler {
  
    init(){
        super.init(name:"Mars")
        setAlpha(alpha:Alpha(alphaValue:0.8))
    }

/*    
    override func boundingRect() -> Rect {
    }
*/
    override func setup(canvasSize:Size, canvas:Canvas) {
        dispatcher.registerEntityMouseDragHandler(handler:self)
    }
 
    override func teardown() {
        dispatcher.unregisterEntityMouseDragHandler(handler:self)
    }
    
    override func render(canvas:Canvas) {
        canvas.render()
    }
    
    func onEntityMouseDrag(globalLocation:Point, movement:Point){
    
    }
    
    override func calculate(canvasSize:Size) {
        print("Calculate \(name)")
//        guard let interactionLayer = layer as? InteractionLayer else {
  //          fatalError("You are a failure in life")
        }

}

