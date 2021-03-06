      *********************** TYT ******************************
      *                                                             *
      **** PROGRAM FOR PERFORMING VSAM/QSAM BATCH OPERATIONS                      
      *                                                               
      *   MODULE NAME = TYT
      *
      *   DESCRIPTIVE NAME = TEST DRIVER PROGRAM FOR BATCH DATASET GENERATED COBOL PROGRAM.      
      *                                                               
      *   FUNCTION = THIS MODULE TESTS THE GENERATED VSAM/QSAM BATCH OPERATIONS COBOL PROGRAM  
      *                                                               
      *   NOTES =                                                     
      *     DEPENDENCIES = N/A 
      *
      *     RESTRICTIONS = N/A                                        
      *                                                               
      *   MODULE TYPE = COBOL PROGRAM                                 
      *      PROCESSOR   = IBM ENTERPRISE COBOL                           
      *      MODULE SIZE = SEE LINK EDIT                              
      *      ATTRIBUTES  = REENTRANT                                  
      *                                                               
      *   ENTRY POINT = TYT                                    
      *      PURPOSE = SEE FUNCTION                                   
      *      LINKAGE =                                                
      *         CALL TYU USING PARMS.                      
      *                                                               
      *      INPUT   = N/A                                    
      *                                                               
      *      OUTPUT  = RESPONSE IN THE PARMS DATA STRUCTURE                    
      *                                                               
      *   EXIT-NORMAL = RETURN CODE 0 NORMAL COMPLETION               
      *   EXIT-ERROR =                                                
      *      RETURN CODE = NONE                                       
      *      ABEND CODES =  NONE                                      
      *      ERROR-MESSAGES =                                         
      *                                                               
      *   EXTERNAL REFERENCES =                                       
      *      ROUTINES/SERVICES =                                      
      *      DATA-AREAS        =    NONE                              
      *      CONTROL-BLOCKS    =                                      
      *                                                               
      *   TABLES = NONE                                               
      *   CHANGE-ACTIVITY = NONE                                      
      *                                                               
      *********************** TYT ******************************
      ***************************************************************
       Identification Division.
         Program-ID. TYT.
       Environment DIVISION.
        Input-output section.
         File-control.

       Data Division.
        File section.


      *
      *
       Working-Storage Section.
       COPY U.       
       77 DO-COPY-DATASET             PICTURE X(8) VALUE 'DUPLICAT'.

       Procedure DIVISION.

      * Test the COBOL program

           MOVE DO-COPY-DATASET TO ACTION.
           CALL 'TYU' USING PARMS.
           goback.

       End program TYT.
