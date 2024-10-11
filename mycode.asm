; multi-segment executable file template.

data segment
    ; add your data here!
 PORTA EQU 00H
 PORTB EQU 02H
 PORTC EQU 04H
 PORT_CON EQU 06H



ends



code segment 
    
  ASSUME CS : Code, DS: Data
    
  ORG 100H

  MOV AL , 82h        ; Configuration du registre de commande
  OUT PORT_CON , AL 
 
   
    
start:
   
   
    IN AL , PORTB   ; lire le portB
    CMP AL , 00000000b 
    JNE N40
    MOV AL ,10000000b   ; Activer le haut-parleur et afficher la valeur 0 sur l'afficheur 1 
    OUT PORTA , AL

    MOV AL , 10010110b   ; Activer le ventilateur , allumer la LED rouge , afficher 6 sur l'afficheur 2
    OUT PORTC , AL
    
    
 

N40 :    CMP AL , 11110000b
    JNE N30
    MOV AL ,00b       ; afficher la valeur 0 sur l'afficheur 1 
    OUT PORTA , AL
   
    MOV AL , 01000100b   ;afficher la valeur 4 sur l'afficheur 2 et allumer la LED orange 
    OUT PORTC , AL
  
    

    
N30 :  CMP AL , 00001111b
    JNE N0
    MOV AL ,00000000b   ; afficher la valeur 0 sur l'afficheur 1 
    OUT PORTA , AL
   
    MOV AL , 00100011b   ; afficher la valeur 3 sur l'afficheur 2 et allumer la LED verte 
    OUT PORTC , AL
  
 
    
N0: CMP AL , 11111111b
    JNE N20
    MOV AL ,00000000b  ; afficher la valeur 0 sur l'afficheur 1 
    OUT PORTA , AL
   
    MOV AL , 00h        ; afficher la valeur 0 sur l'afficheur 2
    OUT PORTC , AL
  

N20 :  CMP AL , 11111100b
    JNE fin
    MOV AL ,00000000b    ; afficher la valeur 0 sur l'afficheur 1 
    OUT PORTA , AL
   
    MOV AL , 00100010b   ; afficher la valeur 2 sur l'afficheur 1  et allumer la LED vert
    OUT PORTC , AL
   

    
    
    
    fin : JMP start
   
ends

end start ; set entry point and stop the assembler.
