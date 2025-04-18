       IDENTIFICATION DIVISION.
       PROGRAM-ID. SKIBIDIER.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I         PIC 99     VALUE 1.
       01 STOP-AT   PIC 99.
       01 STEP      PIC 99     VALUE 1.
       01 MOD7      PIC 99.
       01 WORD      PIC X(7).

       01 SKIBIDI    PIC X(7)  VALUE "Skibidi".
       01 DOP        PIC X(3)  VALUE "Dop".
       01 YES        PIC X(3)  VALUE "Yes".
       01 DIP        PIC X(3)  VALUE "Dip".

       PROCEDURE DIVISION.
           DISPLAY "How many taxpayers are going to be skibidied?"
           DISPLAY ""
           ACCEPT STOP-AT

           PERFORM UNTIL I > STOP-AT
               MOVE SPACES TO WORD
               COMPUTE MOD7 = FUNCTION MOD(STEP 7)

               EVALUATE MOD7
                   WHEN 1
                       MOVE SKIBIDI TO WORD
                   WHEN 2
                       STRING DOP DELIMITED BY SIZE
                              DOP DELIMITED BY SIZE
                              INTO WORD
                   WHEN 3
                       STRING DOP DELIMITED BY SIZE
                              YES DELIMITED BY SIZE
                              INTO WORD
                   WHEN 4
                       MOVE YES TO WORD
                   WHEN 5
                       MOVE SKIBIDI TO WORD
                   WHEN 6
                       MOVE DOP TO WORD
                   WHEN 0
                       STRING DIP DELIMITED BY SIZE
                              DIP DELIMITED BY SIZE
                              INTO WORD
               END-EVALUATE

               DISPLAY WORD
               ADD 1 TO I
               ADD 1 TO STEP
           END-PERFORM
           IF STOP-AT NOT = 0
               DISPLAY ""
               IF STOP-AT = 1
                   DISPLAY "Successfully skibidied 1 taxpayer"
               ELSE
                   DISPLAY "Successfully skibidied " STOP-AT " taxpayers"
               END-IF
           END-IF
           STOP RUN.
