**free

      dcl-Ds DsUsuarioT Qualified Template;
        Nombre like(wNombreT);
        Id like(wIdT);
      end-Ds;

      dcl-s wNombreT char(10) Template;
      dcl-s wIdT int(5) Template;

      dcl-pr PrInsertar;
        parUsuario likeDs(DsUsuarioT);
      end-pr;  