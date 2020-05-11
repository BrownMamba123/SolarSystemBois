import Igis
import Scenes
import Foundation

class Earth : RenderableEntity, EntityMouseDragHandler {
    
    var fillStyle = FillStyle(color:Color(.violet))
    var strokeStyle = StrokeStyle(color:Color(.black))
    let circle = Ellipse(center:Point(), radiusX:25, radiusY:25, fillMode:.fillAndStroke)
    var radians = 0.0
  
    init(){
        super.init(name:"Earth")
        setAlpha(alpha:Alpha(alphaValue:0.8))
    }

    
    override func boundingRect() -> Rect {
        let topLeft = Point(x:circle.center.x - circle.radiusX,
                            y:circle.center.y - circle.radiusY)
          let size = Size(width:circle.radiusX*2, height:circle.radiusY*2)
          return Rect(topLeft:topLeft, size:size)
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        dispatcher.registerEntityMouseDragHandler(handler:self)
    }

    override func teardown() {
        dispatcher.unregisterEntityMouseDragHandler(handler:self)
    }
    
    override func render(canvas:Canvas) {
        canvas.render(fillStyle, strokeStyle, circle)
    }
    
    func onEntityMouseDrag(globalLocation:Point, movement:Point){
        circle.center.moveBy(offsetX:movement.x, offsetY:movement.y )
    }
    
    override func calculate(canvasSize:Size) {
        print("Calculate \(name)")
        guard let interactionLayer = layer as? InteractionLayer else {
            fatalError("You are a failure in life")
        }
        let sun = interactionLayer.sun
      
        circle.center = Point(x:sun.circle.center.x + (sun.circle.radiusX * 3) + (circle.radiusX*5), y:sun.circle.center.y)
          
        let center = sun.circle.center
        let preTranslate = Transform(translate:DoublePoint(x:Double(center.x), y:Double(center.y)))
        let rotate = Transform(rotateRadians:radians) 
        let postTranslate = Transform(translate:DoublePoint(x:Double(-center.x), y:Double(-center.y)))

        setTransforms(transforms:[preTranslate, rotate, postTranslate])
        radians += 2.0 * Double.pi / 180.0
      
     }
}

    
      

