import Scenes
import Igis

class InteractionLayer : Layer {
    let sun : Sun
    let mercury : Mercury
    let venus : Venus
    let earth : Earth
    let mars : Mars
    let moon : Moon
//    let controlPanel : ControlPanel
    init() {
        sun = Sun()
        mercury = Mercury()
        venus = Venus()
        earth = Earth()
        mars = Mars()
        moon = Moon()
   //     controlPanel = ControlPanel()
        super.init(name:"Inteteraction")

        insert(entity:sun, at:.front)
        insert(entity:mercury, at:.front)
        insert(entity:venus, at:.front)
        insert(entity:earth, at:.front)
        insert(entity:mars, at:.front)
        insert(entity:moon, at:.front)
     //   insert(entity:controlPanel, at:.front)
    }

    override func postCalculate(canvas:Canvas) {
        print()
    }
}
