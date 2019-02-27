    function cmbIntermediarioValidation(source, clientside_arguments) {
        clientside_arguments.IsValid = clientside_arguments.Value >= 0;
        /*       
        if (clientside_arguments.Value % 2 == 0 )
        {
        clientside_arguments.IsValid=true;
        }
        else {clientside_arguments.IsValid=false};
        */
    }
    
    function validarMonto(source, argumentos) {
        var v = document.getElementById('rdgCompraCarteraNo').checked;
        //alert(argumentos.Value);
        if (v == true) {
            argumentos.IsValid = true;  // field is empty
        }
        else {
            var ValIni = argumentos.Value;
            if (ValIni == '') ValIni = 0;

            var valor = parseInt(ValIni);
			if (valor != NaN){
				if (valor > 0) {
					argumentos.IsValid = true;
				}
				else {
					argumentos.IsValid = false;
				}	
			}
			else
				argumentos.IsValid = false;
        }
    }
    function validarvacio() {

        var obj = document.GetElementByTagId('<%=txtMontoAComprar.ClientID%>');


        if (obj.lenght.value == "") {
            args.IsValid = false
        }
        else {
            args.IsValid = true
        }

    }

  