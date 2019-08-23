

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var nametext: NSTextField!
    @IBOutlet weak var urltext: NSTextField!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @IBAction func g(_ sender: NSButton) {
        print("hi")
        let someVariable1 = (nametext.stringValue)
        let someVariable2 = (urltext.stringValue)
        print(someVariable1)
        print(someVariable2)
        let shpath = Bundle.main.path(forResource: "buildapp", ofType: "command")
        let path = (shpath)
        let arguments = ["-n="+someVariable1, "-u="+someVariable2]
        
        let task = Process.launchedProcess(launchPath: path!, arguments: arguments)
        task.waitUntilExit()
    }


}

