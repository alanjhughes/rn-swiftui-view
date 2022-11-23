import ExpoModulesCore

public class SwiftuiViewModule: Module {

  public func definition() -> ModuleDefinition {
    Name("SwiftuiView")
    
    View(SwiftuiView.self) {}
  }
}
