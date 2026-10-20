//
//  Validation.swift
//  assignments1
//
//  Created by 전시언 on 10/20/26.
//

import Foundation
import RegexBuilder

extension String{
    var isValidPassword: Bool {
        let letter = CharacterClass("A"..."Z", "a"..."z")
        let number = CharacterClass("0"..."9")
        let special = CharacterClass(.anyOf("!@#$%^&*?_"))
        
        let regex = Regex {
            Lookahead{ ZeroOrMore(.any); letter }
            Lookahead{ ZeroOrMore(.any); number }
            Lookahead{ ZeroOrMore(.any); special }
            Repeat(10...) {
                ChoiceOf { letter; number; special }
            }
        }
        return wholeMatch(of: regex) != nil
    }
    
    var isValidEmail: Bool {
        let regex = Regex {
            OneOrMore {
                CharacterClass(.anyOf("._%+-"), "A"..."Z","a"..."z", "0"..."9")
                }
            "@"
            OneOrMore {
                CharacterClass(.anyOf(".-"), "A"..."Z", "a"..."z", "0"..."9")
            }
            "."
            Repeat(2...) {
                CharacterClass("A"..."Z", "a"..."z")
            }
        }
        return wholeMatch(of: regex) != nil
    }
}
