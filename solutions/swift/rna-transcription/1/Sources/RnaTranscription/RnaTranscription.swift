//Solution goes in Sources
struct Nucleotide {
    private var n: String
    
    init(_ nucleotide: String) {
        n = nucleotide
    }

    func complementOfDNA() throws -> String {
        var complement: String = ""
        
        for char in n {
            switch char {
                case "G":
                    complement.append("C")
                case "C":
                    complement.append("G")
                case "T":
                    complement.append("A")
                case "A":
                    complement.append("U")
                default:
                    throw RnaTranscription.TranscriptionError.invalidNucleotide("\(char) is not a valid Nucleotide")
            }
        }
        return complement
    }
}

enum TranscriptionError: Error {
    case invalidNucleotide(_ message: String)
}