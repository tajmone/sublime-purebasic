; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

; ==============================================================================
;                              Arithmetic Operators                             
; ==============================================================================
A = 10
; ^ keyword.operator.assignment.purebasic
B = A + 5
; ==============================================================================
;                              Comparison Operators                             
; ==============================================================================
If A = B : Debug "Equal" : EndIf
;    ^ keyword.operator.comparison.purebasic
If A <> B : Debug "Unequal" : EndIf
;    ^^ keyword.operator.comparison.purebasic
If A > B : Debug "Greater" : EndIf
;    ^ keyword.operator.comparison.purebasic
If A < B : Debug "Less" : EndIf
;    ^ keyword.operator.comparison.purebasic
If A >= B : Debug "Greater or equal" : EndIf
;    ^^ keyword.operator.comparison.purebasic
If A => B : Debug "Greater or equal" : EndIf
;    ^^ keyword.operator.comparison.purebasic
If A <= B : Debug "Less or equal" : EndIf
;    ^^ keyword.operator.comparison.purebasic
If A =< B : Debug "Less or equal" : EndIf
;    ^^ keyword.operator.comparison.purebasic
; ==============================================================================
;                               Logical Operators                               
; ==============================================================================
assertion1 = #False
assertion2 = #True

If assertion1 And assertion2 : Debug "Both true" : EndIf
;             ^^^ keyword.operator.word.purebasic
If assertion1 Or assertion2 : Debug "At least one is true" : EndIf
;             ^^ keyword.operator.word.purebasic
If assertion1 XOr assertion2 : Debug "Only one is true" : EndIf
;             ^^^ keyword.operator.word.purebasic
If Not assertion1 : Debug "First assertion is false" : EndIf
;  ^^^ keyword.operator.word.purebasic
; ==============================================================================
;                               Bitwise Operators                               
; ==============================================================================
