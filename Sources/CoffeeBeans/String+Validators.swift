import Foundation

public extension String {
    
    /// A Boolean value indicating whether the String is a valid email
    var isEmail: Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let pred = NSPredicate(format:"SELF MATCHES %@", regex)
        return pred.evaluate(with: self)
    }
    
    /// A Boolean value indicating whether the String is a positive numeric value
    var isMoney: Bool {
        let regex = "[0-9,]*[.]{0,1}[0-9]*"
        let pred = NSPredicate(format:"SELF MATCHES %@", regex)
        return pred.evaluate(with: self)
    }
    
    /// A Boolean value indicating whether the String has content other than whitespaces
    var isPresent: Bool {
        let trimmed = self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        return !trimmed.isEmpty
    }
    
}
