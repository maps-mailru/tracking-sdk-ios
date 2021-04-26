#!/usr/bin/env xcrun --sdk macosx swift

import Foundation

let arguments = CommandLine.arguments

if arguments.count < 3 {
    print("Invalid arguments count.\nUsage: \"xcrun swift Template/generate.swift <version> <checksum>\"")
    exit(1)
}

let version = arguments[1]
let checksum = arguments[2]

guard let file = FileManager.default.contents(atPath: "Template/Package_template.swift"), var template = String(data: file, encoding: .utf8) else {
    print("Template not found")
    exit(1)
}

template = template.replacingOccurrences(of: "{{VERSION}}", with: version)
template = template.replacingOccurrences(of: "{{CHECKSUM}}", with: checksum)

do {
    try template.write(toFile: "Package.swift", atomically: true, encoding: .utf8)
} catch {
    print("Cannot write Package.swift: \(error.localizedDescription)")
    exit(1)
}

print("Success!")
