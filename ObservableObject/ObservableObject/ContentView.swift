//
//  ContentView.swift
//  ObservableObject
//
//  Created by Keshav Kishore on 26/07/22.
//

import SwiftUI



struct Contact: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
}


class ContactsListViewModel: ObservableObject {
    @Published var contacts: [Contact] = [
        Contact(firstName: "Keshav ", lastName: "Kishore"),
        Contact(firstName: "Baibhav", lastName: "Vishal"),
        Contact(firstName: "Ish Nath", lastName: "Jha")
    ]
    
    
    func fetchContacts() {
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            self.contacts = [Contact(firstName: "Ram Kumar", lastName: "Jha"),
                             Contact(firstName: "Tara Nand", lastName: "Jha"),
                             Contact(firstName: "Mahesh Kumar", lastName: "Jha"),
                             Contact(firstName: "Har Har", lastName: "Mahadev")]
        }
    }
    
}


struct ContentView: View {
    @ObservedObject var viewModel = ContactsListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.contacts) { contact in
                    Text("\(contact.firstName) \(contact.lastName)")
                }
            }
            .navigationTitle("Contacts")
            .navigationBarItems(trailing: Button(action: {
                // Go Fetch Contacts
                viewModel.fetchContacts()
            }, label: {
                Text("Refresh")
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
