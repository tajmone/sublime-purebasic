; SYNTAX TEST "Packages/PureBasic/PureBasic.sublime-syntax"

; ==============================================================================
;                             Procedure/EndProcedure
; ==============================================================================

Procedure MyProc()
;^^^^^^^^^^^^^^^    meta.function
;<-                 storage.type.function
;<-                 keyword.declaration.function.begin
;         ^^^^^^    entity.name.function
;               ^^  meta.group
;               ^   punctuation.section.parens.begin
;                ^  punctuation.section.parens.end
  Debug "Hello world!"
; ^^^^^^^^^^^^^^^^^^^^  meta.function
EndProcedure
; <-  keyword.declaration.function.end

x = 1
; <-  -meta.function

; PB allows spaces between the Proc. name and the parens:

Procedure SpacesBeforeParens ()
;         ^^^^^^^^^^^^^^^^^^     entity.name.function
  Debug "Hello world!"
EndProcedure

; /// EOF ///
