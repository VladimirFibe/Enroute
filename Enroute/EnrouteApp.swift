import SwiftUI

@main
struct EnrouteApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            FlightsEnrouteView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
