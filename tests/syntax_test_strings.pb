; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

plainStr$ = "Just a string!"
;           ^^^^^^^^^^^^^^^^ string.quoted.double
;           ^                punctuation.definition.string.begin
;                          ^ punctuation.definition.string.end

; ******************************************************************************
; *                            Character Constants                             *
; ******************************************************************************
; Char constants are scoped as "single-quotes string"...

space  = ' ' ; comment
;        ^^^ string.quoted.single
;        ^ punctuation.definition.string.begin
;          ^ punctuation.definition.string.end
;           ^^^^^^^^^^ - string.quoted.single
lettA  = 'A'
;        ^^^ string.quoted.single
dQuote = '"'
;        ^^^ string.quoted.single

