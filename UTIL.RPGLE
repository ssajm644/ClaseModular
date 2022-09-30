**free

    /copy COPY
    dcl-proc FnFormatoFecha Export;
     dcl-pi *n like(wFechaT);
       InDate Date(*ISO) Const;
     end-pi;
     //variables
     dcl-s wFecha like(wFechaT);
     //process
      wFecha = %char(InDate:*ISO0);
      Return wFecha;
     end-proc;
     dcl-proc FnFormatoTiempo Export;
       dcl-pi *n like(wTiempoT);
        InTime Time(*ISO) Const;
       end-pi;
      //variables
     dcl-s wTiempo like(wTiempoT);
        //process
        wTiempo = %char(InTime:*hms);
        Return wTiempo;
     end-proc;