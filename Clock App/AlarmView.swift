//
//  AlarmView.swift
//  swiftUI_2025
//
//  Created by Jose Garcia on 26/02/25.
//

import SwiftUI

struct AlarmView: View {

    // @State private var alarms: [Alarm] = []

    @State private var alarms: [Alarm] = [
        Alarm(id: UUID(), time: Calendar.current.date(
                bySettingHour: 7, minute: 0, second: 0, of: Date())!,
                label: "Despertar", isOn: true),
        Alarm(id: UUID(), time: Calendar.current.date(
                bySettingHour: 8, minute: 30, second: 0, of: Date())!,
                label: "Reunión", isOn: false),
        Alarm(id: UUID(), time: Calendar.current.date(
                bySettingHour: 10, minute: 0, second: 0, of: Date())!,
                label: "Ejercicio", isOn: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(alarms) { alarm in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(alarm.time, style: .time)
                            .font(.largeTitle)
                            .foregroundStyle(alarm.isOn ? .white : .gray)
                            Text(alarm.label)
                            .foregroundStyle(alarm.isOn ? .white : .gray)
                        }

                        Spacer()

                        Toggle("", isOn: Binding<Bool>(
                                get: { alarm.isOn },
                                set: { newValue in
                                    if let index = alarms.firstIndex(of: alarm) {
                                        alarms[index].isOn = newValue
                                    }
                                })
                        )
                        .swipeActions(edge: .leading) {
                            Button {
                                if let index = alarms.firstIndex(of: alarm) {
                                    alarms.remove(at: index)
                                }
                            } label: {
                                Image(systemName: "trash")
                            }
                            .tint(.red)
                        }
                        .contextMenu {
                            Button {
                                if let index = alarms.firstIndex(of: alarm) {
                                    alarms[index].isOn.toggle()
                                }
                            } label: {
                                Label(alarm.isOn ? "Turn Off" : "Turn On",
                                        systemImage: alarm.isOn ? "bell.slash.fill" : "bell.fill")
                            }

                            Button {
                                if let index = alarms.firstIndex(of: alarm) {
                                    alarms.remove(at: index)
                                }
                            } label: {
                                Label("Delete",
                                        systemImage: "trash")
                            }
                        }
                    }
                }
            }
            .navigationTitle(Text("Alarms"))
            .preferredColorScheme(.dark)
        }
    }
}

struct Alarm: Identifiable, Equatable {
    var id: UUID
    var time: Date
    var label = ""
    var isOn: Bool
}

#Preview {
    AlarmView()
}
