import Igis

class ControlPanel {
    let allButtons : [Button]
    let increaseSpeed : Button
    let decreaseSpeed : Button
    static let increaseSpeedLabel : String = "+ Speed"
    static let decreaseSpeedLabel : String = "- Speed"

    init() {
        let buttonTopLeft = Point(x:10, y:10)
        let buttonSize = Size(width:160, height:25)
        let buttonMargin = 20
        let buttonFont = "16pt Arial"
   //     var currentButtonSize = buttonSize
        var currentButtonTopLeft = buttonTopLeft
        increaseSpeed  = Button(topLeft:currentButtonTopLeft, size:buttonSize,
                                           buttonStrokeStyle:StrokeStyle(color:Color(.darkgreen)), buttonFillStyle:FillStyle(color:Color(.lightgreen)),
                                           textOffset:Point(x:2, y:20),label:ControlPanel.increaseSpeedLabel, font:buttonFont,
                                           fontFillStyle:FillStyle(color:Color(.black)))
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
        currentButtonTopLeft.moveBy(offsetX:buttonSize.width + buttonMargin, offsetY:0)
        decreaseSpeed  = Button(topLeft:currentButtonTopLeft, size:buttonSize,
                                           
                                           buttonStrokeStyle:StrokeStyle(color:Color(.darkgreen)), buttonFillStyle:FillStyle(color:Color(.lightgreen)),
                                           
                                           textOffset:Point(x:2, y:20), label:ControlPanel.decreaseSpeedLabel, font:buttonFont,
                                           
                                           fontFillStyle:FillStyle(color:Color(.black)))
        /*----------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
  //      currentButtonTopLeft.moveBy(offsetX:0, offsetY:buttonSize.height + buttonMargin)
  //      currentButtonSize.changeTo(width:buttonSize.width + buttonMargin, height:25)
        allButtons = [increaseSpeed, decreaseSpeed]
    }

    func paint(canvas:Canvas) {
        increaseSpeed.paint(canvas:canvas)
        decreaseSpeed.paint(canvas:canvas)
    
    }
    func hitTest(location:Point) -> Button? {
        let hitButtons = allButtons.filter {$0.hitTest(location:location)}
        return hitButtons.first
    }
}
