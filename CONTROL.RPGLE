**free

      /copy COPY

      dcl-pr PrEntrada;
        parNombre like(wNombreT);
        parId like(wIdT);
      end-pr;

      dcl-Proc PrEntrada Export;
        dcl-pi *n;
          InNombre like(wNombreT);
          InId like(wIdT);
        end-pi;

        //- Structures 

        dcl-Ds DsUsuario likeDs(DsUsuarioT); 

        //- Process 

        DsUsuario.Nombre = InNombre;
        DsUsuario.Id = InId; 

        PrInsertar(DsInsertar);

      end-Proc;


