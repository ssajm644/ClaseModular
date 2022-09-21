**free

      dcl-Proc PrInsertar Export;
        dcl-pi *n;
          InUsuario likeDs(DsUsuarioT);
        end-pi;

        //- Process 

        Exec SQL
          Insert Into USUARIO Values(:InUsuario); 

      end-Proc;   
