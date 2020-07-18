//
//  UpcomingEventsViewController.swift
//  Reserva
//
//  Created by Granwyn Tan on 5/7/20.
//  Copyright © 2020 Pascal Inc. All rights reserved.
//

import UIKit
import EventKit

class UpcomingEventsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let eventStore = EKEventStore()
        switch EKEventStore.authorizationStatus(for: .event) {
        case .authorized:
            insertEvent(store: eventStore)
            case .denied:
                print("Access denied")
            case .notDetermined:
                eventStore.requestAccess(to: .event, completion:
                  {[weak self] (granted: Bool, error: Error?) -> Void in
                      if granted {
                        self!.insertEvent(store: eventStore)
                      } else {
                            print("Access denied")
                      }
                })
                default:
                    print("Case default")
        }
    }
        
    func insertEvent(store: EKEventStore) {
        // 1
        let calendars = store.calendars(for: .event)
            
        for calendar in calendars {
            // 2
            if calendar.title == "ioscreator" {
                // 3
                let startDate = Date()
                // 2 hours
                let endDate = startDate.addingTimeInterval(2 * 60 * 60)
                    
                // 4
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                    
                event.title = "New Meeting"
                event.startDate = startDate
                event.endDate = endDate
                    
                // 5
                do {
                    try store.save(event, span: .thisEvent)
                }
                catch {
                   print("Error saving event in calendar")             }
                }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
