; IDX_Exercise1.asm
;
; Purpose: Confirm our knowledge of Constant Offset Indexed Addressing Mode
;
        org     $1000
MyArray db      $11, $22, $33, $44, $55

        org     $1020
Storage ds      5

        org     $2000
        ldx     #MyArray        ; Pointer to start of MyArray
        ldy     #Storage        ; Pointer to start of Storage

                                ; All questions should be answered AFTER the
                                ; execution of the applicable line of code
        ldaa    0,x             ; X = ____________?
                                ; A = ____________?
                                ; What Effective address was used for retrieval__________?

        ldaa    4,x             ; X = ____________?
                                ; A = ____________?
                                ; What Effective address was used for retrieval__________?

        inx
	ldaa    2,x		; X = ____________?
	                        ; A = ____________?
                                ; What Effective address was used for retrieval__________?

        inca
        staa    2,y             ; Y = ____________?
                                ; A = ____________?
                                ; What Effective address was used for storage ____________?
        iny
        iny
        staa    2,y            ; Y = ____________?
                                ; A = ____________?
                                ; What Effective address was used for storage ____________?
        end