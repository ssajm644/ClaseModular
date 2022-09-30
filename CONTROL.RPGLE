**free

      /copy COPY

           dcl-Proc PrEntrada Export;
        dcl-pi *n;
          InNombre like(wNombreT) Const; // se pone Const para asegurar que es de entrada y no lo cambian internamente
          InId like(wIdT) Const;
          OutMsgId like (wMsgIdT)
        end-pi;

        //- Structures 

        dcl-Ds DsUsuario likeDs(DsUsuarioT); 


        // variables
        ds-s wSqlState like(wSqlStateT);
        //- Process 

        DsUsuario.Nombre = InNombre;
        DsUsuario.Id = InId; 
        DsUsuario.Fecha=FnFormatoFecha(%Date());
        DsUsuario.Time=FnFormatoTiempo(%Time());

        PrInsertar(DsUsuario:wSqlState);

      end-Proc;


