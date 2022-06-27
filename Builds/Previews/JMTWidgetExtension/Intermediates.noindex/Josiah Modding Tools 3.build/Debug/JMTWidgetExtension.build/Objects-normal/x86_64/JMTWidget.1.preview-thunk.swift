@_private(sourceFile: "JMTWidget.swift") import JMTWidgetExtension
import WidgetKit
import Intents
import SwiftUI
import SwiftUI

extension JMTWidget_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 66)
        JMTWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
        
    #sourceLocation()
    }
}

extension JMTWidgetEntryView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 47)
        Text(entry.date, style: .time)
    #sourceLocation()
    }
}

extension Provider {
    @_dynamicReplacement(for: getTimeline(for:in:completion:)) private func __preview__getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 23)
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in __designTimeInteger("#554.[3].[2].[2].sequence.[0]", fallback: 0) ..< __designTimeInteger("#554.[3].[2].[2].sequence.[1]", fallback: 5) {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    #sourceLocation()
    }
}

extension Provider {
    @_dynamicReplacement(for: getSnapshot(for:in:completion:)) private func __preview__getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 18)
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    #sourceLocation()
    }
}

extension Provider {
    @_dynamicReplacement(for: placeholder(in:)) private func __preview__placeholder(in context: Context) -> SimpleEntry {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 14)
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    #sourceLocation()
    }
}

import struct JMTWidgetExtension.Provider
import struct JMTWidgetExtension.SimpleEntry
import struct JMTWidgetExtension.JMTWidgetEntryView
import struct JMTWidgetExtension.JMTWidget
import struct JMTWidgetExtension.JMTWidget_Previews