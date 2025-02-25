

      *****************************************
      * CobolScript program name: accept.cbl
      * This program provides an
      * example of ACCEPT command usage, all
      * variants.
      *
      * Copyright 2000 Deskware, Inc.
      *****************************************

      * For more information on CGI processing, see
      * the sample program cgi.cbl           
      *
      * ACCEPT variants:
      * Syntax Form 1: ACCEPT  FROM DATE.                   
      *                                                               
      * Syntax Form 2: ACCEPT  FROM DAY.                    
      *                                                               
      * Syntax Form 3: ACCEPT  FROM DAY-OF-WEEK.            
      *                                                               
      * Syntax Form 4: ACCEPT  FROM TIME.                   
      *                                                               
      * Syntax Form 5: ACCEPT  FROM KEYBOARD                
      *                   [PROMPT ].                  
      *                                                               
      * Syntax Form 6: ACCEPT DATA       FROM WEBPAGE.                
      *                                                               
       1 dates.
          5  date_var            PIC X(08).
          5  day_var             PIC X(05).
          5  day_of_week_var     PIC X(01).
          5  time_var            PIC X(08).
          5  stdin_var           PIC X(10).
        
       main.
            DISPLAY `This program demonstrates the various uses of the `.
            DISPLAY `ACCEPT command. `.
            DISPLAY ``.

            ACCEPT date_var          FROM DATE.
            ACCEPT day_var           FROM DAY.
            ACCEPT day_of_week_var   FROM DAY-OF-WEEK.
            ACCEPT time_var          FROM TIME.
            ACCEPT stdin_var         FROM KEYBOARD PROMPT `Enter something: `.

            DISPLAY `DATE: ` & date_var.
            DISPLAY `DAY: ` & day_var.
            DISPLAY `DAY-OF-WEEK: ` & day_of_week_var.
            DISPLAY `TIME: ` & time_var.
            DISPLAY `STANDARD INPUT: ` & stdin_var.
            STOP RUN.

