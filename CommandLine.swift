// BEGIN cmd_import
// Import the necessary classes from the Foundation framework
import Foundation
// END cmd_import

// BEGIN load_data
// Get the data from a file called "Data.txt"
let data = try! String(contentsOfFile: "Data.txt")
// END load_data

// BEGIN split_lines
// Split into lines and remove blank lines
let rows = data.components(separatedBy: "\n").filter({ $0.characters.count > 0 })
// END split_lines

// BEGIN create_date_input_formatter
// Create the first date formatter, for reading the date
let dateInputFormatter = DateFormatter()
dateInputFormatter.dateFormat = "dd-MM-YY"
// END create_date_input_formatter

// BEGIN create_date_output_formatter
let dateOutputFormatter = DateFormatter()
dateOutputFormatter.dateStyle = .fullStyle
// END create_date_output_formatter

// BEGIN create_currency_formatter
// Create a number formatter for formatting the currency
let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = .currency
// END create_currency_formatter

// BEGIN create_report_lines
// The lines in our report will go in here
var reportLines : [String] = []
// END create_report_lines

// BEGIN start_for_loop
// Process each row
for row in rows { 
    // END start_for_loop

    // BEGIN split_columns
    // Split the row into columns
    let columns = row.components(separatedBy: ",") 
    // END split_columns

    // BEGIN extract_data
    // Extract the data from each column
    let dateColumn = columns[0]
    let amountColumn = columns[1]
    let noteColumn = columns[2]
    // END extract_data

    // BEGIN read_price
    // Read the price as a number
    let scanner = Scanner(string: amountColumn)

    var price : Double = 0

    scanner.scanDouble(&price)
    // END read_price

    // BEGIN format_price
    // Format the number
    let priceFormatted = numberFormatter.string(from:price) ?? "$0.00"
    // END format_price

    // BEGIN format_date
    // Format the date
    let dateFormatted = dateOutputFormatter.string(from: Date())
    // END format_date

    // BEGIN add_line_to_report
    // Add the line to the report
    reportLines.append("\(dateFormatted): \(priceFormatted) for \(noteColumn)")

} 
// END add_line_to_report

// BEGIN join_lines
// Turn the report lines into a single string, separated by lines of '---'
let report = reportLines.joined(separator: "\n---\n")
// END join_lines

// BEGIN print_report
// Finally, print the report
print(report)
// END print_report
