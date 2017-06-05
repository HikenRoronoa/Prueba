<HTML>

<HEAD>

  <title>HSBC Nmina</title>  

  <SCRIPT >


    function Intra(){ //Funcion que regesa a Intranet y desactiva el back

      window.open('http://dstolw04.mx.hsbc/newintranet/IntranetPub.nsf/Content/HomeDeptos','_top');

    }

         

    function inicia(){

      forma=document.entrada;

      forma.usr.value='';

      forma.pwd.value='';

    }

    

    function Valida(){

      forma=document.entrada;

      if((forma.usr.value=='') && (forma.pwd.value=='')){

        alert('***NO SE HA ESPECIFICADO NI USUARIO NI PASSWORD***');

        forma.usr.focus();

        return;

      }

      if(forma.usr.value==''){

        alert('***NO SE HA ESPECIFICADO EL USUARIO***');

        forma.usr.focus();

        return;

      }

      else if(forma.pwd.value==''){

        alert('***NO SE HA ESPECIFICADO EL PASSWORD***');

        forma.pwd.focus();

        return; 

      }

      else forma.submit();

    }

    function cambiopass(){

      forma=document.entrada;

      if(forma.usr.value==''){

        alert('***NO SE HA ESPECIFICADO EL USUARIO***');

        forma.usr.focus();

        return;

      }

      else{

             forma.action='http://s05autep01.mx.hsbc:9080/autentica_ldap/CambiaPasswordUI.jsp';

           forma.submit();

      }

    }

  </SCRIPT>


    <script type="text/javascript">

        $(document).ready(function () {

            document.getElementById("usr").focus();

        });


        //Valida que solo escriban nmero en los Text

        function validar(e) {

            tecla = (document.all) ? e.keyCode : e.which;

            if (tecla == 8) return true;

            patron = /[0-9]/;

            te = String.fromCharCode(tecla);

            return patron.test(te);

        }


    </script>


</HEAD>

<BODY bgcolor=white onLoad='JavaScript:inicia();' marginheight='6' marginwidth='6'> 

<CENTER>

<form name='entrada' action='http://mxw00121533/cedula/mc/Reporteador_Nomina_2/_silentLogOnSecure.asp' method='POST'>

<table align="center" cellpadding="0" cellspacing="0">

	 <tr>

	  <td>

	   <IMG SRC="imgs/cenefa_nomina.jpg">

	  </td>

	 </tr>

	</table>

	<br><br>


   <TABLE border=0>

                    <tr><td align="center" colspan="2">

                    <font face="arial" size="2"><b>"NMINA SEGUIMIENTO DE CUENTAS"</b><br><br>

                    </font></td></tr>

	 

   <TR>

     <TD ALIGN='center' VALIGN='CENTER' 

rowspan=1 colspan=2 BGCOLOR='#FFFFFF' ><FONT SIZE='1' FACE='arial' COLOR='#000000'>Para tener acceso a esta aplicaci&oacute;n debes proporcionar<BR>tu Registro y Contrasea personalizada<BR><BR><BR><BR><%=Request.QueryString("dst")%></FONT></TD>

   </TR>

   <TR>

     <TD ALIGN='right' VALIGN='CENTER' BGCOLOR='#FFFFFF' ><FONT SIZE='1' FACE='arial' COLOR='#000000'><B>Usuario:</B></FONT></TD>

     <TD ALIGN='left' VALIGN='CENTER' BGCOLOR='#FFFFFF' ><FONT SIZE='1' FACE='arial' COLOR='#000000'><INPUT TYPE='text' NAME='usr' id="usr"  SIZE=15 MAXLENGTH=15 ></FONT></TD>

   </TR>

   <TR>

     <TD ALIGN='right' VALIGN='CENTER' BGCOLOR='#FFFFFF' ><FONT SIZE='1' FACE='arial' COLOR='#000000'><B>Password:</B></FONT></TD>

     <TD ALIGN='left' VALIGN='CENTER' BGCOLOR='#FFFFFF' ><FONT SIZE='1' FACE='arial' COLOR='#000000'><INPUT TYPE='password' NAME='pwd' id="pwd"  SIZE=15 MAXLENGTH=15 ></FONT></TD>

   </TR>

   </TABLE>

  <INPUT TYPE='hidden'   NAME='origen'  VALUE='http://mxw00121533/cedula/mc/Reporteador_Nomina_2/_access.asp'>

  <INPUT TYPE='hidden'   NAME='destino' VALUE='<% if Request.QueryString("dst") = "" then %>http://mxw00121533/cedula/mc/Reporteador_Nomina_2/_silentLogOnSecure.asp<% else %><%=Request.QueryString("dst")%><%end if%>'>

  </form> 

<br><br>

  <A HREF='JavaScript:Intra();' onMouseover='self.status="Menu Intranet"; return true;' onMouseout='self.status="Document Done"; return true;'><IMG SRC='imgs/b_intranet.gif' BORDER=0></A>  

  <A HREF='JavaScript:Valida();' onMouseover='self.status="Presione para aceptar"; return true;' onMouseout='self.status="Document Done"; return true;'><img src='imgs/b_acep.gif' border=0></A>

  

  <SCRIPT> 

    document.entrada.usr.focus();

  </SCRIPT>


</CENTER>

</BODY>

</HTML>
