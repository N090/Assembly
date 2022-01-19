*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
     ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA HEALTHPOINTS, A2  ;loads health into a2
    MOVE A2, D1     ;moves a2 into d1
    ADD #5, D1      ;adds 5 to d1    
    SUB #5, D1      ;subtracts 5 from d1
    MULU #2, D1     ;multiplies d1 by 2
    DIVU #2, D1     ;divides d1 by 2
    
    SIMHALT             ; halt simulator

* Put variables and constants here

health dc.b $10

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
