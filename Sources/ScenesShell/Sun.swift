import Scenes
import Igis

class Sun : RenderableEntity {

   
    var fillStyle = FillStyle(color:Color(.yellow))
    var strokeStyle = StrokeStyle(color:Color(.black))

    let circle = Ellipse(center:Point(), radiusX:80, radiusY:80, fillMode:.fillAndStroke) //main

    var velocityX = Int.random(in:10...20)
    var velocityY = Int.random(in:10...20)
   // var expansionRate = 1

    init(){
        super.init(name:"Sun")
        setAlpha(alpha:Alpha(alphaValue:0.8))

    }
    
    override func boundingRect() -> Rect{
        let topLeft = Point(x:circle.center.x - circle.radiusX,
                            y:circle.center.y - circle.radiusY)
        let size = Size(width:circle.radiusX*2, height:circle.radiusY*2)
        return Rect(topLeft:topLeft, size:size)  // Bouding rect for main circle
        // Bounding rect for orbiting circle
    }
    

    
    override func setup(canvasSize:Size, canvas:Canvas) { // make the ball start from the middle of the canvas
        circle.center = Point(x:canvasSize.width/2, y:canvasSize.height/2)
    }
    
    override func calculate(canvasSize:Size){
        print("Calculate \(name)")
     //   circle.radiusX += expansionRate
     //   circle.radiusY += expansionRate

      /*  if (circle.radiusX > 100 || circle.radiusX < 20) {
            expansionRate *= -1
              fillStyle = FillStyle(color:Color(red: UInt8.random(in: 0...255), green: UInt8.random(in: 0...255), blue: UInt8.random(in: 0...255)))
        }*/
    }
    
    override func render(canvas:Canvas) {
        canvas.render(fillStyle, strokeStyle, circle)
    }
}
