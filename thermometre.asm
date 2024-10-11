porta EQU   $1000
portb EQU   $1004
portc EQU   $1003
portd EQU   $1008
porte EQU   $100A
DDRC  EQU   $1007
DDRD  EQU   $1009
PACTL EQU   $1026


   ORG $C000

;;;;;;;;;; configuration des ports ;;;;;;;;

     LDAA   #$FF
     STAA   DDRC

     LDAA   #$FF
     STAA   DDRD

     LDAA   #%00000000
     STAA   PACTL



;;;;;;;Programme principal ;;;;;;;;;

loop


DEBUT    LDAA porta
      

         CMPA #%00000000
         BNE  N20
         LDAA #$00
         STAA portd

         LDAA #$3F
         STAA portb

         LDAA #$3F
         STAA portc
         
    


N20      CMPA #%00000001
         BNE N30 
         LDAA #%00000100
         STAA portd 

         LDAA #$3F
         STAA portb
       
         LDAA #$5B
         STAA portc
         
    
N30     CMPA #%00000010
        BNE N40 
        LDAA #%00000100
        STAA portd

        LDAA #$3F
        STAA portb
      
        LDAA #$4F
        STAA portc
       

N40     CMPA #%00000100
        BNE N60 
        LDAA #$02
        STAA portd

        LDAA #$3F
        STAA portb
        
        LDAA #$66
        STAA portc
        


N60    CMPA #%10000000
       BNE DEBUT
       LDAA #$01
       STAA portd

       LDAA #$3F
       STAA portb
       
       LDAA #$7D
       STAA portc
       
       


 BRA loop








END 