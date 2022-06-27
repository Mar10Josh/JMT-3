@_private(sourceFile: "JMTWidget.swift") import JMTWidgetExtension
import WidgetKit
import Intents
import SwiftUI
import SwiftUI

extension JMTWidget_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 66)
        __designTimeSelection(JMTWidgetEntryView(entry: __designTimeSelection(SimpleEntry(date: __designTimeSelection(Date(), "#554.[7].[0].property.[0].[0].arg[0].value.arg[0].value"), configuration: __designTimeSelection(ConfigurationIntent(), "#554.[7].[0].property.[0].[0].arg[0].value.arg[1].value")), "#554.[7].[0].property.[0].[0].arg[0].value"))
            .previewContext(__designTimeSelection(WidgetPreviewContext(family: .systemSmall), "#554.[7].[0].property.[0].[0].modifier[0].arg[0].value")), "#554.[7].[0].property.[0].[0]")
        
    #sourceLocation()
    }
}

extension JMTWidgetEntryView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 47)
        __designTimeSelection(Text(__designTimeSelection(entry.date, "#554.[5].[1].property.[0].[0].arg[0].value"), style: .time), "#554.[5].[1].property.[0].[0]")
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
            let entry = SimpleEntry(date: __designTimeSelection(entryDate, "#554.[3].[2].[2].[1].value.arg[0].value"), configuration: __designTimeSelection(configuration, "#554.[3].[2].[2].[1].value.arg[1].value"))
            __designTimeSelection(entries.append(__designTimeSelection(entry, "#554.[3].[2].[2].[2].modifier[0].arg[0].value")), "#554.[3].[2].[2].[2]")
        }

        let timeline = Timeline(entries: __designTimeSelection(entries, "#554.[3].[2].[3].value.arg[0].value"), policy: .atEnd)
        __designTimeSelection(completion(__designTimeSelection(timeline, "#554.[3].[2].[4].arg[0].value")), "#554.[3].[2].[4]")
    #sourceLocation()
    }
}

extension Provider {
    @_dynamicReplacement(for: getSnapshot(for:in:completion:)) private func __preview__getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 18)
        let entry = SimpleEntry(date: __designTimeSelection(Date(), "#554.[3].[1].[0].value.arg[0].value"), configuration: __designTimeSelection(configuration, "#554.[3].[1].[0].value.arg[1].value"))
        __designTimeSelection(completion(__designTimeSelection(entry, "#554.[3].[1].[1].arg[0].value")), "#554.[3].[1].[1]")
    #sourceLocation()
    }
}

extension Provider {
    @_dynamicReplacement(for: placeholder(in:)) private func __preview__placeholder(in context: Context) -> SimpleEntry {
        #sourceLocation(file: "/Users/josiah/Downloads/Josiah Modding Tools 3/JMTWidget/JMTWidget.swift", line: 14)
        __designTimeSelection(SimpleEntry(date: __designTimeSelection(Date(), "#554.[3].[0].[0].arg[0].value"), configuration: __designTimeSelection(ConfigurationIntent(), "#554.[3].[0].[0].arg[1].value")), "#554.[3].[0].[0]")
    #sourceLocation()
    }
}

import struct JMTWidgetExtension.Provider
import struct JMTWidgetExtension.SimpleEntry
import struct JMTWidgetExtension.JMTWidgetEntryView
import struct JMTWidgetExtension.JMTWidget
import struct JMTWidgetExtension.JMTWidget_Previews