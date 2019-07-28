//
//  Date+EasyCalculation.swift
//  EasySDK
//
//  Created by Amit Majumdar on 22/07/19.
//  Copyright © 2019 EasyDevelopmentSDK. All rights reserved.
//

import Foundation

public extension Date {
    
    public static var current: Date {
        return Calendar.current.startOfDay(for: Date())
    }
    
    public var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }
    
    public var endOfDay: Date {
        let components = DateComponents(calendar: Calendar.current, day: 1, second: -1)
        return Calendar.current.date(byAdding: components, to: self) ?? Date.current
    }
    
    public var startOfWeek: Date {
        guard let date = Calendar.current.date(from: Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else {
            return Date.current
        }
        return date
    }
    
    public var endOfWeek: Date {
        guard let endOfWeek = Calendar.current.date(byAdding: .day,
                                                    value: 6,
                                                    to: startOfWeek) else {
                                                        return Date.current
        }
        return endOfWeek
    }
    
    public var isWeekend: Bool {
        return Calendar(identifier: .gregorian).isDateInWeekend(self)
    }
    
    /// Returns the hour representation of a date
    public var hour: Int {
        return Calendar.current.component(.hour, from: self)
    }
    
    /// Returns the minute representation of a date
    public var minute: Int {
        return Calendar.current.component(.minute, from: self)
    }
    
    /// Returns the second representation of a date
    public var second: Int {
        return Calendar.current.component(.second, from: self)
    }
    
    /// Returns the day representation of a date
    public var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    /// Returns the month representation of a date
    public var month: Int {
        return Calendar.current.component(.month, from: self)
    }
    
    /// Returns the month symbols of a date
    public var monthSymbol: String {
        return Calendar.current.monthSymbols[self.month - 1]
    }
    
    /// Returns the short month symbols of a date
    public var shortMonthSymbol: String {
        return Calendar.current.shortMonthSymbols[self.month - 1]
    }
    
    /// Returns the very short month symbols of a date
    public var veryShortMonthSymbol: String {
        return Calendar.current.veryShortMonthSymbols[self.month - 1]
    }
    
    /// Returns the year representation of a date
    public var year: Int {
        return Calendar.current.component(.year, from: self)
    }
    
    /// Returns the era representation of a date
    public var era: Int {
        return Calendar.current.component(.era, from: self)
    }
    
    /// Returns the weekday representation of a date
    public var weekday: Int {
        return Calendar.current.component(.weekday, from: self)
    }
    
    /// Returns the long weekday representation of a date
    public var weekdaySymbol: String {
        return Calendar.current.weekdaySymbols[weekday - 1]
    }
    
    /// Returns the short weekday representation of a date
    public var shortWeekdaySymbol: String {
        return Calendar.current.shortWeekdaySymbols[weekday - 1]
    }
    
    /// Returns the very short weekday representation of a date
    public var veryShortWeekdaySymbol: String {
        return Calendar.current.veryShortWeekdaySymbols[weekday - 1]
    }
    
    /// Returns the standalone weekday representation of a date
    public var standaloneWeekdaySymbol: String {
        return Calendar.current.standaloneWeekdaySymbols[weekday - 1]
    }
    
    /// Returns the weekday Ordinal representation of a date
    public var weekdayOrdinal: Int {
        return Calendar.current.component(.weekdayOrdinal, from: self)
    }
    
    /// Returns the week Of Month representation of a date
    public var weekOfMonth: Int {
        return Calendar.current.component(.weekOfMonth, from: self)
    }
    
    /// Returns the week Of Year representation of a date
    public var weekOfYear: Int {
        return Calendar.current.component(.weekOfYear, from: self)
    }
    
    /// Returns the year for week of year representation of a date
    public var yearForWeekOfYear: Int {
        return Calendar.current.component(.yearForWeekOfYear, from: self)
    }
    
    /// Returns the quarter representation of a date
    public var quarter: Int {
        return Calendar.current.component(.quarter, from: self)
    }
    
    /// Returns the nanoseconds of a date
    public var nanosecond: Int {
        return Calendar.current.component(.nanosecond, from: self)
    }
    
    /// Returns the timeZone representation of a date
    public var timeZone: Int {
        return Calendar.current.component(.timeZone, from: self)
    }
    
    public var startOfWeekWithDaylightSavingTime: Date {
        guard let date = Calendar.current.date(from: Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else {
            return Date.current
        }
        let daylightSavingTimeOffset = TimeZone.current.daylightSavingTimeOffset(for: date)
        let startDateOfWeek = date.addingTimeInterval(daylightSavingTimeOffset)
        return startDateOfWeek
    }
}

extension Date {
    
    /// This method returns a custom date
    ///
    /// - Parameters:
    ///   - day: day component of the date
    ///   - month: month component of the date
    ///   - year: year component of the date
    /// - Returns: A custom date
    
    public static func getCustomDate(day: Int, month: Int, year: Int) -> Date {
        let dateComponents = DateComponents(calendar: Calendar.current,
                                            year: year,
                                            month: month,
                                            day: day)
        guard let date = Calendar.current.date(from: dateComponents) else {
            return Date.current
        }
        return date.startOfDay
    }
}
