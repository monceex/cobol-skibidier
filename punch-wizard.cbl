       IDENTIFICATION DIVISION.
       PROGRAM-ID. PUNCHER.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CURRENT-TIME          PIC 9(1) VALUE ZEROS.
       01  TIMESTAMP-NUMBER      PIC 9(1) VALUE ZEROS.
       01  RESULT                PIC 9(3) VALUE ZEROS.
       01  WIZARD-HEALTH         PIC 9(3) VALUE 100.
       01  WIZARD-GOLD           PIC 9(3) VALUE ZEROS.
       01  DAMAGE                PIC 9(3) VALUE ZEROS.
       01  SHARE                 PIC 9(2) VALUE ZEROS.

       PROCEDURE DIVISION.

           ACCEPT CURRENT-TIME FROM DATE.
           

           MOVE CURRENT-TIME TO TIMESTAMP-NUMBER.

           COMPUTE RESULT = TIMESTAMP-NUMBER * TIMESTAMP-NUMBER * 2.

           MOVE RESULT TO WIZARD-GOLD.
           
           COMPUTE SHARE = WIZARD-GOLD / 3.
           
           DISPLAY "Enter the amount of damage: "
           ACCEPT DAMAGE.

           IF DAMAGE >= WIZARD-HEALTH
               DISPLAY ""
               DISPLAY "Making punch with power - " DAMAGE
               DISPLAY ""
               DISPLAY "What did you do? You're a criminal, shame on you"
               DISPLAY ""
               DISPLAY "The wizard has perished and dropped " WIZARD-GOLD " coins"
               STOP RUN
           END-IF.
           
           IF WIZARD-HEALTH - DAMAGE < 21
               DISPLAY ""
               DISPLAY "Making punch with power - " DAMAGE
               DISPLAY ""
               DISPLAY "bANG, uh?..."
               DISPLAY ""
               DISPLAY "The wizard survived, but " SHARE " of his coins has fallen out."
           ELSE
               DISPLAY ""
               DISPLAY "Making punch with power - " DAMAGE
               DISPLAY ""
               DISPLAY "Nah, even an old man can handle it like a champ."
               DISPLAY ""
               DISPLAY "The wizard is fine, his pouch is full of coins."
           END-IF.

           STOP RUN.

       END PROGRAM MultiplyTimestamp.
