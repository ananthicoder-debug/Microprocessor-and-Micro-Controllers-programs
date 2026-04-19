//search

                OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
ARRAY DW 0000H,0004H,0001H,0003H,0002H
KEY DW 0004H
RESULT DB 00H
COUNT EQU 0005H
DATA ENDS
CODE SEGMENT
                ASSUME CS:CODE,DS:DATA
                MOV AX,DATA
                MOV DS,AX
                MOV CX,COUNT
                DEC DX
        MOV SI ,OFFSET ARRAY
                MOV RESULT, 00H
L1:             MOV AX,[SI]
                CMP AX,KEY
                JE L2
                INC SI
                INC SI
                LOOP L1
                HLT
L2:             MOV RESULT,01H
                HLT
CODE ENDS
ENDS
