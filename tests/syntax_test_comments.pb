; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

; A comment line
; <-             punctuation.definition.comment
;^^^^^^^^^^^^^^^ comment.line

Debug "something" ; A comment following code
;                 ^^^^^^^^^^^^^^^^^^^^^^^^^^  comment.line
;                 ^                           punctuation.definition.comment

; /// EOF ///
