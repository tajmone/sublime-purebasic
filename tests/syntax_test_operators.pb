; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

; ==============================================================================
;                             Assignment Operators
; ==============================================================================

; FIXME: The syntax should distinguish when the equal sign used for assignment
;        or comparison. Currently it always scopes it as comparison:
;
;           keyword.operator.comparison
;
;        but in the future it should also handle assignment:
;
;           keyword.operator.assignment

A = 10
; ^ keyword.operator.comparison
; ==============================================================================
;                              Arithmetic Operators
; ==============================================================================
B = A + 5 - 3 * C / 99 % Z
;     ^                    keyword.operator.arithmetic
;         ^                keyword.operator.arithmetic
;             ^            keyword.operator.arithmetic
;                 ^        keyword.operator.arithmetic
;                      ^   keyword.operator.arithmetic
; ==============================================================================
;                              Comparison Operators
; ==============================================================================
If A = B : Debug "Equal" : EndIf
;    ^ keyword.operator.comparison
If A <> B : Debug "Unequal" : EndIf
;    ^^ keyword.operator.comparison
If A > B : Debug "Greater" : EndIf
;    ^ keyword.operator.comparison
If A < B : Debug "Less" : EndIf
;    ^ keyword.operator.comparison
If A >= B : Debug "Greater or equal" : EndIf
;    ^^ keyword.operator.comparison
If A => B : Debug "Greater or equal" : EndIf
;    ^^ keyword.operator.comparison
If A <= B : Debug "Less or equal" : EndIf
;    ^^ keyword.operator.comparison
If A =< B : Debug "Less or equal" : EndIf
;    ^^ keyword.operator.comparison
; ==============================================================================
;                               Logical Operators
; ==============================================================================
assertion1 = #False
assertion2 = #True

If assertion1 And assertion2 : Debug "Both true" : EndIf
;             ^^^ keyword.operator.word
If assertion1 Or assertion2 : Debug "At least one is true" : EndIf
;             ^^ keyword.operator.word
If assertion1 XOr assertion2 : Debug "Only one is true" : EndIf
;             ^^^ keyword.operator.word
If Not assertion1 : Debug "First assertion is false" : EndIf
;  ^^^ keyword.operator.word
; ==============================================================================
;                               Bitwise Operators
; ==============================================================================

; Bitwise AND
ANDed.w = %1000 & %0101
;               ^ keyword.operator.bitwise
bits = a & b
;        ^        keyword.operator.bitwise
a & b
; ^               keyword.operator.bitwise

; Bitwise OR
ORed.w = %1000 | %0101
;              ^  keyword.operator.bitwise
bits = a | b
;        ^        keyword.operator.bitwise
a | b
; ^               keyword.operator.bitwise

; Bitwise XOR
XORed.w = %1000 ! %0101
;               ^ keyword.operator.bitwise

; Bitwise NOT
NOTed.b = ~%1000
;         ^       keyword.operator.bitwise

; /// EOF ///
