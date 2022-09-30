**free

//- Dictionary
dcl-Ds DsUsuarioT Qualified Template;
   Nombre like (wNombreT);
   Id like(wIdT);
   Fecha like(wFechaT);
   Tiempo like(wTimeT);
end-DS;
dcl-s wNombreT Char(10) Template;
dcl-s wIdT int(5) Template;
dcl-s wMsIdT char(7) Template;
dcl-s wFechaT varchar(100) Template;
dcl-s wTimeT  varchar(100) Template;
dcl-s wSqlStateT char(5) Template;
//- Prototypes
dcl-s prInsertar;
  parUsuario likeDs(DsUsuario);
  parSqlState like(wSqlStateT);
end-pr;  
dcl-pr FnFormatoFecha like(wFechaT);
  parDate Date(*ISO) Const;
end-pr;
dcl-pr FnFormatoTiempo like(wTiempoT);
  parTime Time(*ISO) Const;
end-pr;
dcl-s prEntrada;
  parNombre like(wNombreT) Const;
  parID like(wIdT) Const;
  parMsgId like(wMsIdT);
End-pr;  
