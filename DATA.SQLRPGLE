**free
/copy

      dcl-Proc PrInsertar Export;
        dcl-pi *n; 
          InUsuario likeDs(DsUsuarioT);
          OutSqlState likeDs(wSqlStateT);
        end-pi;
        //- Process 
        Exec SQL
          Insert Into USUARIO Values(:InUsuario); 
          OutSqlState=SQLSTATE;
      end-Proc;   
