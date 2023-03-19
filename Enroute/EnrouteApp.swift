import SwiftUI

@main
struct EnrouteApp: App {
    let context = PersistenceController.shared.container.viewContext
    let airport: Airport
    init() {
        airport = Airport.withICAO("KSFO", context: context)
        airport.fetchIncomingFlights()
    }
    var body: some Scene {
        WindowGroup {
            FlightsEnrouteView(
                flightSearch: FlightSearch(destination: airport))
                .environment(\.managedObjectContext, context)
        }
        
    }
}
