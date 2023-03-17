import SwiftUI

struct FlightsEnrouteView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, World!")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) { simulation }
                ToolbarItem(placement: .navigationBarTrailing) { filter }
            }
        }
    }
    var filter: some View {
        Button {
            
        } label: {
            Text("Filter")
        }

    }
    
    var simulation: some View {
        Text("3:35 PM")
    }
}

struct FlightsEnrouteView_Previews: PreviewProvider {
    static var previews: some View {
        FlightsEnrouteView()
    }
}
