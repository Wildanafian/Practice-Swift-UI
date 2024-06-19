// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Source {
  /// Choose Date
  internal static let chooseDate = Source.tr("Localizable", "chooseDate", fallback: "Choose Date")
  /// Date Filter
  internal static let dateFilter = Source.tr("Localizable", "dateFilter", fallback: "Date Filter")
  /// Latest Sprint
  internal static let latestSprint = Source.tr("Localizable", "latestSprint", fallback: "Latest Sprint")
  /// Login
  internal static let login = Source.tr("Localizable", "login", fallback: "Login")
  /// Pasword
  internal static let password = Source.tr("Localizable", "password", fallback: "Pasword")
  /// Project
  internal static let project = Source.tr("Localizable", "project", fallback: "Project")
  /// Sprint Retro
  internal static let sprintRetro = Source.tr("Localizable", "sprintRetro", fallback: "Sprint Retro")
  /// Sprint Review
  internal static let sprintReview = Source.tr("Localizable", "sprintReview", fallback: "Sprint Review")
  /// Task
  internal static let task = Source.tr("Localizable", "task", fallback: "Task")
  /// Localizable.strings
  ///   practice swift ui
  /// 
  ///   Created by Wildan on 03/05/24.
  internal static let username = Source.tr("Localizable", "username", fallback: "Username")
  internal enum Hint {
    /// Masukkan Pasword
    internal static let inputPassword = Source.tr("Localizable", "hint.inputPassword", fallback: "Masukkan Pasword")
    /// Masukkan Username
    internal static let inputUsername = Source.tr("Localizable", "hint.inputUsername", fallback: "Masukkan Username")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Source {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
