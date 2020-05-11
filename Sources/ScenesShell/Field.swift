import Scenes
import Igis
import Foundation
class Field : RenderableEntity{
    let backgroundFill = FillStyle(color:Color(.black))
    let backgroundRectangle = Rectangle(rect:Rect(topLeft:Point(), size:Size(width:0, height:0)), fillMode:.fill)

    let midFeildFill = FillStyle(color:Color(.white))
    let midFeildLine = Rectangle(rect:Rect(topLeft:Point(), size:Size(width:0, height:0)), fillMode:.fill)

    override func setup(canvasSize:Size, canvas:Canvas) {
        guard let canvasSize = canvas.canvasSize else{
            fatalError("Unable to set up Field without canvasSize")
        }
        let midFeildLineWidth = 4

        backgroundRectangle.rect.size = canvasSize
        midFeildLine.rect.topLeft = Point(x:canvasSize.width / 2 - midFeildLineWidth / 2, y:0)
        midFeildLine.rect.size = Size(width:midFeildLineWidth, height:canvasSize.height)
    }
    override func render(canvas:Canvas){
        canvas.render(backgroundFill, backgroundRectangle, midFeildFill, midFeildLine)
        
        
    }
}


