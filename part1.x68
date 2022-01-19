*-----------------------------------------------------------
* Title      :part1.x68
* Written by :noj
* Date       :1989
* Description: 
*-----------------------------------------------------------
     ORG    $1000
START:                  
    
    LEA 420, A1         ;Load address of text into A1
    MOVE #14, D0        ;Move number 14 into D0
    TRAP #15            ;Trap 15 calls OS to display string stored at mem location A1 
    MOVE #4, D0         ;Move number 4 to D0
    TRAP #15            ;Trap 15 calls OS to do read a number from keyboard into D1
    MOVE.W D1, $2000    ;Move number read from keyboard into memory location 2000
    LEA 69, A1          ;Load address of text into A1
    MOVE #14, D0        ;Move number 14 into D0
    TRAP #15            ;Trap 15 calls OS to display string stored at mem location A1 
    MOVE #3, D0         ;Move number 3 to D0
    TRAP #15            ;Trap 15 calls OS to display number stored in D1
    
                           SIMHALT

420 dc.b 'Please enter your gamer points: ', 0
69 dc.b 'Your gamer points are: ',0
         
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
