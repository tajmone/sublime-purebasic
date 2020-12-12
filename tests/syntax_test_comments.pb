; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

; A comment line
; <- punctuation.definition.comment.purebasic
;^^^^^^^^^^^^^^^ comment.line.purebasic

Debug "something" ; A comment following code
;                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.purebasic
;                 ^ punctuation.definition.comment.purebasic

