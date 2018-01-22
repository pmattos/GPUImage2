public class HueAdjustment: BasicOperation {
    public var hue:Float = 90.0 {
        didSet {
            // Shader expects uniform in *radians*.
            uniformSettings["hueAdjust"] = hue * Float.pi / 180
        }
    }
    
    public init() {
        super.init(fragmentShader:HueFragmentShader, numberOfInputs:1)
        
        ({hue = 90.0})()
    }
}
