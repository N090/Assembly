*-----------------------------------------------------------
* Title      :part3.X68
* Written by :Nojus Satikauskas
* Date       :15:31
* Description:
*-----------------------------------------------------------
    ORG $1000
START:
    LEA text, A1
    MOVE #4,D0
    TRAP #15
    MOVE #14,D0
    TRAP #15
    MOVE #3,D0
    TRAP #15
 
    SIMHALT
text dc.b 'Data Register: ',0
    END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
