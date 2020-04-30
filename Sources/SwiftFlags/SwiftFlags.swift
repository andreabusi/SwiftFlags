// MIT License
//
// Copyright (c) 2020 Andrea Busi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

@objc
final public class SwiftFlags: NSObject {
    
    private static let countries: [String: [String]] = [
      "AD": ["Andorra", "Andorran"],
      "AE": ["United Arab Emirates", "UAE", "Emirati"],
      "AF": ["Afghanistan", "Afghan"],
      "AG": ["Antigua and Barbuda", "Antiguan, Barbudan"],
      "AI": ["Anguilla", "Anguillian"],
      "AL": ["Albania", "Albanian"],
      "AM": ["Armenia", "Armenian"],
      "AN": ["Netherlands Antilles"],
      "AO": ["Angola", "Angolan"],
      "AQ": ["Antarctica", "Antarctican"],
      "AR": ["Argentina", "Argentine"],
      "AS": ["American Samoa", "American Samoan"],
      "AT": ["Austria", "Austrian"],
      "AU": ["Australia", "Australian"],
      "AW": ["Aruba", "Aruban"],
      "AX": ["Åland Islands", "Ålandish"],
      "AZ": ["Azerbaijan", "Azerbaijani"],
      "BA": ["Bosnia and Herzegovina", "Bosnian, Herzegovinian"],
      "BB": ["Barbados", "Barbadian"],
      "BD": ["Bangladesh", "Bangladeshi"],
      "BE": ["Belgium", "Belgian"],
      "BF": ["Burkina Faso", "Burkinabe"],
      "BG": ["Bulgaria", "Bulgarian"],
      "BH": ["Bahrain", "Bahraini"],
      "BI": ["Burundi", "Burundian"],
      "BJ": ["Benin", "Beninese"],
      "BM": ["Bermuda", "Bermudian"],
      "BN": ["Brunei Darussalam", "Bruneian"],
      "BO": ["Bolivia", "Bolivian"],
      "BR": ["Brazil", "Brazilian"],
      "BS": ["Bahamas", "Bahamian"],
      "BT": ["Bhutan", "Bhutanese"],
      "BV": ["Bouvet Island"],
      "BW": ["Botswana", "Motswana"],
      "BY": ["Belarus", "Belarusian"],
      "BZ": ["Belize", "Belizean"],
      "CA": ["Canada", "Canadian"],
      "CC": ["Cocos (Keeling) Islands", "Cocos Islander"],
      "CD": ["Congo, The Democratic Republic of the"],
      "CF": ["Central African Republic", "Central African"],
      "CG": ["Congo"],
      "CH": ["Switzerland", "Swiss"],
      "CI": ["Cote D'Ivoire", "Ivorian"],
      "CK": ["Cook Islands", "Cook Islander"],
      "CL": ["Chile", "Chilean"],
      "CM": ["Cameroon", "Cameroonian"],
      "CN": ["China", "Chinese"],
      "CO": ["Colombia", "Colombian"],
      "CR": ["Costa Rica", "Costa Rican"],
      "CU": ["Cuba", "Cuban"],
      "CV": ["Cape Verde", "Cape Verdian", "Cabo Verde"],
      "CX": ["Christmas Island", "Christmas Islander"],
      "CY": ["Cyprus", "Cypriot"],
      "CZ": ["Czechia", "Czech Republic", "Czech"],
      "DE": ["Germany", "German"],
      "DJ": ["Djibouti"],
      "DK": ["Denmark", "Danish"],
      "DM": ["Dominica"],
      "DO": ["Dominican Republic"],
      "DZ": ["Algeria", "Algerian"],
      "EC": ["Ecuador", "Ecuadorean"],
      "EE": ["Estonia", "Estonian"],
      "EG": ["Egypt", "Egyptian"],
      "EH": ["Western Sahara", "Sahrawi"],
      "ER": ["Eritrea", "Eritrean"],
      "ES": ["Spain", "Spanish"],
      "ET": ["Ethiopia", "Ethiopian"],
      "EU": ["European Union"],
      "FI": ["Finland", "Finnish"],
      "FJ": ["Fiji", "Fijian"],
      "FK": ["Falkland Islands (Malvinas)", "Falkland Islander"],
      "FM": ["Micronesia, Federated States of", "Micronesian"],
      "FO": ["Faroe Islands", "Faroese"],
      "FR": ["France", "French"],
      "GA": ["Gabon", "Gabonese"],
      "GB": ["United Kingdom", "UK", "British"],
      "GD": ["Grenada", "Grenadian"],
      "GE": ["Georgia", "Georgian"],
      "GF": ["French Guiana", "Guianan"],
      "GG": ["Guernsey"],
      "GH": ["Ghana", "Ghanaian"],
      "GI": ["Gibraltar"],
      "GL": ["Greenland", "Greenlandic"],
      "GM": ["Gambia", "Gambian"],
      "GN": ["Guinea", "Guinean"],
      "GP": ["Guadeloupe", "Guadeloupian"],
      "GQ": ["Equatorial Guinea", "Equatorial Guinean"],
      "GR": ["Greece", "Greek"],
      "GS": ["South Georgia and the South Sandwich Islands", "South Georgian South Sandwich Islander"],
      "GT": ["Guatemala", "Guatemalan"],
      "GU": ["Guam", "Guamanian"],
      "GW": ["Guinea-Bissau", "Guinea-Bissauan"],
      "GY": ["Guyana", "Guyanese"],
      "HK": ["Hong Kong", "Hong Konger"],
      "HM": ["Heard Island and Mcdonald Islands", "Heard and McDonald Islander"],
      "HN": ["Honduras", "Honduran"],
      "HR": ["Croatia", "Croatian"],
      "HT": ["Haiti", "Haitian"],
      "HU": ["Hungary", "Hungarian"],
      "ID": ["Indonesia", "Indonesian"],
      "IE": ["Ireland", "Irish"],
      "IL": ["Israel", "Israeli"],
      "IM": ["Isle of Man", "Manx"],
      "IN": ["India", "Indian"],
      "IO": ["British Indian Ocean Territory"],
      "IQ": ["Iraq", "Iraqi"],
      "IR": ["Iran, Islamic Republic Of", "Iranian"],
      "IS": ["Iceland", "Icelander"],
      "IT": ["Italy", "Italian"],
      "JE": ["Jersey"],
      "JM": ["Jamaica", "Jamaican"],
      "JO": ["Jordan", "Jordanian"],
      "JP": ["Japan", "Japanese"],
      "KE": ["Kenya", "Kenyan"],
      "KG": ["Kyrgyzstan", "Kirghiz"],
      "KH": ["Cambodia", "Cambodian"],
      "KI": ["Kiribati", "I-Kiribati"],
      "KM": ["Comoros", "Comoran"],
      "KN": ["Saint Kitts and Nevis", "Kittitian or Nevisian"],
      "KP": ["Korea, Democratic People's Republic of", "North Korea", "North Korean", "DPRK"],
      "KR": ["Korea, Republic of", "South Korea", "South Korean"],
      "KW": ["Kuwait", "Kuwaiti"],
      "KY": ["Cayman Islands", "Caymanian"],
      "KZ": ["Kazakhstan", "Kazakhstani"],
      "LA": ["Lao People's Democratic Republic", "Laotian", "Laos"],
      "LB": ["Lebanon", "Lebanese"],
      "LC": ["Saint Lucia", "Saint Lucian"],
      "LI": ["Liechtenstein", "Liechtensteiner"],
      "LK": ["Sri Lanka", "Sri Lankan"],
      "LR": ["Liberia", "Liberian"],
      "LS": ["Lesotho", "Mosotho"],
      "LT": ["Lithuania", "Lithuanian"],
      "LU": ["Luxembourg", "Luxembourger"],
      "LV": ["Latvia", "Latvian"],
      "LY": ["Libyan Arab Jamahiriya", "Libyan"],
      "MA": ["Morocco", "Moroccan"],
      "MC": ["Monaco", "Monegasque"],
      "MD": ["Moldova, Republic of", "Moldovan"],
      "ME": ["Montenegro", "Montenegrin"],
      "MG": ["Madagascar", "Malagasy"],
      "MH": ["Marshall Islands", "Marshallese"],
      "MK": ["Macedonia, The Former Yugoslav Republic of", "Macedonian", "North Macedonia, Republic of"],
      "ML": ["Mali", "Malian"],
      "MM": ["Myanmar", "Burma", "Burmese"],
      "MN": ["Mongolia", "Mongolian"],
      "MO": ["Macao", "Macau", "Macanese"],
      "MP": ["Northern Mariana Islands"],
      "MQ": ["Martinique"],
      "MR": ["Mauritania", "Mauritanian"],
      "MS": ["Montserrat", "Montserratian"],
      "MT": ["Malta", "Maltese"],
      "MU": ["Mauritius", "Mauritian"],
      "MV": ["Maldives", "Maldivan"],
      "MW": ["Malawi", "Malawian"],"MX": ["Mexico", "Mexican"],
      "MY": ["Malaysia", "Malaysian"],
      "MZ": ["Mozambique", "Mozambican"],
      "NA": ["Namibia", "Namibian"],
      "NC": ["New Caledonia", "New Caledonian"],
      "NE": ["Niger", "Nigerien"],
      "NF": ["Norfolk Island", "Norfolk Islander"],
      "NG": ["Nigeria", "Nigerian"],
      "NI": ["Nicaragua", "Nicaraguan"],
      "NL": ["Netherlands", "Dutch"],
      "NO": ["Norway", "Norwegian"],
      "NP": ["Nepal", "Nepalese"],
      "NR": ["Nauru", "Nauruan"],
      "NU": ["Niue", "Niuean"],
      "NZ": ["New Zealand", "New Zealander"],
      "OM": ["Oman", "Omani"],
      "PA": ["Panama", "Panamanian"],
      "PE": ["Peru", "Peruvian"],
      "PF": ["French Polynesia", "French Polynesian"],
      "PG": ["Papua New Guinea", "Papua New Guinean"],
      "PH": ["Philippines", "Filipino"],
      "PK": ["Pakistan", "Pakistani"],
      "PL": ["Poland", "Polish"],
      "PM": ["Saint Pierre and Miquelon"],
      "PN": ["Pitcairn", "Pitcairn Islander"],
      "PR": ["Puerto Rico", "Puerto Rican"],
      "PS": ["Palestinian Territory, Occupied", "Palestine", "Palestinian"],
      "PT": ["Portugal", "Portuguese"],
      "PW": ["Palau", "Palauan"],
      "PY": ["Paraguay", "Paraguayan"],
      "QA": ["Qatar", "Qatari"],
      "RE": ["Reunion"],
      "RO": ["Romania", "Romanian"],
      "RS": ["Serbia", "Serbian"],
      "RU": ["Russian Federation", "Russian"],
      "RW": ["Rwanda", "Rwandan"],
      "SA": ["Saudi Arabia", "Saudi Arabian"],
      "SB": ["Solomon Islands", "Solomon Islander"],
      "SC": ["Seychelles", "Seychellois"],
      "SD": ["Sudan", "Sudanese"],
      "SE": ["Sweden", "Swedish"],
      "SG": ["Singapore", "Singaporean"],
      "SH": ["Saint Helena", "Saint Helenian"],
      "SI": ["Slovenia", "Slovene"],
      "SJ": ["Svalbard and Jan Mayen"],
      "SK": ["Slovakia", "Slovak"],
      "SL": ["Sierra Leone", "Sierra Leonean"],
      "SM": ["San Marino", "Sammarinese"],
      "SN": ["Senegal", "Senegalese"],
      "SO": ["Somalia", "Somali"],
      "SR": ["Suriname", "Surinamer"],
      "ST": ["Sao Tome and Principe", "Sao Tomean"],
      "SV": ["El Salvador", "Salvadoran"],
      "SY": ["Syrian Arab Republic", "Syrian"],
      "SZ": ["Swaziland", "Swazi"],
      "TC": ["Turks and Caicos Islands", "Turks and Caicos Islander"],
      "TD": ["Chad", "Chadian"],
      "TF": ["French Southern Territories"],
      "TG": ["Togo", "Togolese"],
      "TH": ["Thailand", "Thai"],
      "TJ": ["Tajikistan", "Tadzhik"],
      "TK": ["Tokelau", "Tokelauan"],
      "TL": ["Timor-Leste", "East Timorese"],
      "TM": ["Turkmenistan", "Turkmen"],
      "TN": ["Tunisia", "Tunisian"],
      "TO": ["Tonga", "Tongan"],
      "TR": ["Turkey", "Turkish"],
      "TT": ["Trinidad and Tobago", "Trinidadian"],
      "TV": ["Tuvalu", "Tuvaluan"],
      "TW": ["Taiwan", "Taiwanese"],
      "TZ": ["Tanzania, United Republic of", "Tanzanian"],
      "UA": ["Ukraine", "Ukrainian"],
      "UG": ["Uganda", "Ugandan"],
      "UM": ["United States Minor Outlying Islands"],
      "US": ["United States", "USA", "American"],
      "UY": ["Uruguay", "Uruguayan"],
      "UZ": ["Uzbekistan", "Uzbekistani"],
      "VA": ["Holy See (Vatican City State)", "Vatican"],
      "VC": ["Saint Vincent and the Grenadines", "Saint Vincentian"],
      "VE": ["Venezuela", "Venezuelan"],
      "VG": ["Virgin Islands, British"],
      "VI": ["Virgin Islands, U.S."],
      "VN": ["Vietnam", "Viet Nam", "Vietnamese"],
      "VU": ["Vanuatu", "Ni-Vanuatu"],
      "WF": ["Wallis and Futuna", "Wallis and Futuna Islander"],
      "WS": ["Samoa", "Samoan"],
      "XK": ["Kosovo", "Kosovar"],
      "YE": ["Yemen", "Yemeni"],
      "YT": ["Mayotte", "Mahoran"],
      "ZA": ["South Africa", "South African"],
      "ZM": ["Zambia", "Zambian"],
      "ZW": ["Zimbabwe", "Zimbabwean"]
    ]
    
    // MARK: - Public
    
    /// Returns the emoji flag for the given country.
    ///
    ///  Examples:
    ///  - flag(for: "it") -> 🇮🇹
    ///  - flag(for: "united states") -> 🇺🇸
    ///  - flag(for: "england") -> nil
    ///
    /// - Parameter country: Name or ISO 3166-1 code of the country
    /// - Returns: Emoji flag if available, nil otherwise
    @objc public class func flag(for country: String) -> String? {
        if let code = countryCode(for: country) {
            return emojiFlag(for: code)
        }
        
        return nil
    }
    
    /// Returns only the country code for the given country.
    /// - Parameter country: Name of the country
    /// - Returns: ISO 3166-1 code for the given country, nil if no math found
    @objc public class func countryCode(for country: String) -> String? {
        let input = trimmed(string: country).lowercased()
        if input.isEmpty {
            return nil
        }
        
        // check if provided input is already a country code
        if isCode(input) {
            return country
        }
        
        // search for an exact match
        for (countryCode, countryNames) in countries {
            for countryName in countryNames {
                if countryName.lowercased() == input {
                    return countryCode
                }
            }
        }
        
        // search for an inexact match
        // using a set, we are going to keep only one entry for each country code found
        var results = Set<String>()
        for (countryCode, countryNames) in countries {
            for countryName in countryNames {
                if compare(input: input, countryName: countryName) {
                    results.insert(countryCode)
                }
            }
        }
        
        // seturns only when exactly one match was found
        // it prevents cases like "United" to produce a result
        if results.count == 1, let code = results.first {
            return code
        }
        
        return nil
    }
    
    // MARK: - Private
    
    private class func isCode(_ code: String) -> Bool {
        countries[code.uppercased()] != nil
    }
        
    private class func compare(input anInput: String, countryName aCountryName: String) -> Bool {
        let input = anInput.lowercased()
        let countryName = aCountryName.lowercased()
        
        // cases like:
        // "Vatican" <-> "Holy See (Vatican City State)"
        // "Russia"  <-> "Russian Federation"
        if (countryName.contains(input) || input.contains(countryName)) {
            return true
        }
        
        // cases like:
        // "British Virgin Islands" <-> "Virgin Islands, British"
        // "Republic of Moldova"    <-> "Moldova, Republic of"
        if (input.contains(",")) {
            let reversed = input.split(separator: ",").reversed().joined(separator: " ")
            if (reversed.contains(countryName) || countryName.contains(reversed)) {
                return true
            }
        }
        
        return false
    }
    
    // MARK: - Helpers
    
    private class func trimmed(string: String) -> String {
        string.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Converts an ISO country code into the emoji flag (unicode)
    /// Note: no check performed on the validity of the countryCode passed as input
    /// - Parameter countryCode: Country code to convert
    /// - Returns: Emoji flag
    private class func emojiFlag(for countryCode: String) -> String {
        let baseFlagScalar: UInt32 = 127397
        var flagString = ""
        for scalarValue in countryCode.uppercased().unicodeScalars {
            guard let scalar = UnicodeScalar(baseFlagScalar + scalarValue.value) else {
                continue
            }
            flagString.unicodeScalars.append(scalar)
        }
        return flagString
    }
}
