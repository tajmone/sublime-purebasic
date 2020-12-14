; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

; ==============================================================================
;                                Literal Strings
; ==============================================================================
Literal$ = "Just a string!"
;          ^^^^^^^^^^^^^^^^  string.quoted.double
;          ^                 punctuation.definition.string.begin
;                         ^  punctuation.definition.string.end

; No escape sequences should be matched here:
Literal$ =  "\a..\b..\f..\n..\r..\t..\v..\\"
;            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^       -constant.character.escape

; ==============================================================================
;                                Escaped Strings
; ==============================================================================
; https://www.purebasic.com/documentation/reference/general_rules.html

Escaped$ = ~"...."
;          ^^^^^^^ string.quoted.double
;          ^^      punctuation.definition.string.begin
;                ^ punctuation.definition.string.end

Escaped$ = ~"\a..\b..\f..\n..\r..\t..\v..\\..\".."
;            ^^                                    constant.character.escape
;                ^^                                constant.character.escape
;                    ^^                            constant.character.escape
;                        ^^                        constant.character.escape
;                            ^^                    constant.character.escape
;                                ^^                constant.character.escape
;                                    ^^            constant.character.escape
;                                        ^^        constant.character.escape
;                                            ^^    constant.character.escape
;              ^^                                 -constant.character.escape
;                  ^^                             -constant.character.escape
;                      ^^                         -constant.character.escape
;                          ^^                     -constant.character.escape
;                              ^^                 -constant.character.escape
;                                  ^^             -constant.character.escape
;                                      ^^         -constant.character.escape
;                                          ^^     -constant.character.escape
;                                              ^^ -constant.character.escape

; ==============================================================================
;                              Character Constants
; ==============================================================================
; Char constants are scoped as "single-quotes string"...

space  = ' ' ; comment
;        ^^^             string.quoted.single
;        ^               punctuation.definition.string.begin
;          ^             punctuation.definition.string.end
;           ^^^^^^^^^^  -string.quoted.single
lettA  = 'A'
;        ^^^ string.quoted.single
dQuote = '"'
;        ^^^ string.quoted.single

; /// EOF ///
