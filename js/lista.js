//constante para guardar datos temporalmente
const TEMPORAL_LISTA = {}

//inicalozar apenas carge la pagina en el navegador 
$(() => {

    //ocultar tabal minetras no se ejeute la funcon listar
    TEMPORAL_LISTA.tabla = $("#tabla_pacientes").html();
    $("#tabla_pacientes").html("");

});

//ABRIR MODAL DE AGREGAR USUARIO
function Lista_Abrir_Modal_registar() {
    $("#agregar_info").modal("show");
}
//ABRIR MODAL DE EDITAR USAUARIO
function Lista_Abrir_Modal_editar() {
    $("#agregar_info").modal("show");
}



//FUNCION PARA GUARADAR INFORMACION DEL PACIENTE 
function Lista_Guardar_Informacion_Paciente() {

    $("#").val();
    //CREAMOS FORMDATA PARA ENVIAR LOS PARAMETROS
    let datos = new FormData();

    $.ajax({
        type: "POST",
        url: "lista_modelo.php?DTO=1",
        data: datos,
        cache: false,
        dataType: "json",
        processData: false,
        contentType: false,
        //en caso de tener respuesta del servidor
        success: function (respuesta) {

            //validar la respuesta que llega del servidor
            if (respuesta == 1) {
                Swal.fire({
                    title: 'Exito!',
                    text: 'Datos registardos con exito',
                    icon: 'success',
                    confirmButtonText: 'OK'
                });
                //LIMPIAR MODAL AGREGAR 
                Lista_Linpiar_Campos();
                //CERRA MODAL AGREGAR
                $("#cerrar_modal_agregar").clic();

            } else {
                Swal.fire({
                    title: 'Error!',
                    text: 'Error al insertar los datos',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
            }

        },
        //SIN RESPUESTA DEL SERVIDRO O UN ERROR 400 O 500
        error: () => {
            Swal.fire({
                title: 'Error!',
                text: 'Sin respuesta de la base de datos',
                icon: 'error',
                confirmButtonText: 'OK'
            });
        }
    });
}

//FUNCION PARA LISTAR INFORMACION DEL PACIENTE
function Lista_Listar_Informacion_paciente() {

    $.ajax({
        type: "POST",
        url: "lista_modelo.php?DTO=2",
        cache: false,
        dataType: "json",
        processData: false,
        contentType: false,
        success: function (respuesta) {
            //VARIABLE QUE USAMOS PARA GUARDAR LA TBALA TEMPORAL Y DATOS QUE OBTENERMOS DE RESPUESTA
            let HTML = "";
            //VALIDAMOS QUE LA RESPUESTA NO SEA VACIA
            if (respuesta != "") {
                //EJECUTAMOS CICLO PARA RECORRER Y PINTAR DATOS
                $.each(respuesta, (key, valor) => {
                    HTML = + TEMPORAL_LISTA.tabla
                        //EN ESTE ESPACION DEBIAN IR LOS DATOS REQUERIDOS PARA LA TABLA
                        .replaceAll("{info1}", valor.valorrequerido)
                        .replaceAll("{info2}", valor.valorrequerido)
                        .replaceAll("{info3}", valor.valorrequerido)
                        .replaceAll("{info4}", valor.valorrequerido)
                        .replaceAll("{id_1}", valor.valorrequerido)
                        .replaceAll("{id_1}", valor.valorrequerido)

                    //PINTAMOS LA TABLA EN LA VISTA 
                    $("#tabla_pacientes").html(HTML);

                });
            }
        },
        error: () => {
            Swal.fire({
                //SIN RESPUESTA DEL SERVIDRO O UN ERROR 400 O 500
                title: 'Error!',
                text: 'Sin respuesta de la base de datos',
                icon: 'error',
                confirmButtonText: 'OK'
            });
        }
    });

}

//FUNCION PARA LISTAR DATOS DEL PACIETE POR ID
function Lista_Listar_Info_Pacinetes_Por_Id(e) {

    let id_paciente = $(e).attr("t-pi");

    $.ajax({
        type: "POST",
        url: "lista_modelo.php?DTO=3",
        data: { 'id': id_paciente },
        cache: false,
        dataType: "json",
        processData: false,
        contentType: false,
        success: function (respuesta) {
            if (respuesta != 0) {
                //PINTAR LOS DATOS TARIDOS EN EL FORMULARIO EDITAR
                $("#"), val(respuesta[0].valorrequerido);
                $("#"), val(respuesta[0].valorrequerido);
                $("#"), val(respuesta[0].valorrequerido);
                $("#"), val(respuesta[0].valorrequerido);
                $("#"), val(respuesta[0].valorrequerido);
                $("#"), val(respuesta[0].valorrequerido);
            }
        },
        error: () => {
            //SIN RESPUESTA DEL SERVIDRO O UN ERROR 400 O 500
            Swal.fire({
                title: 'Error!',
                text: 'Sin respuesta de la base de datos',
                icon: 'error',
                confirmButtonText: 'OK'
            });
        }
    });
}

//FUNCION PARA EDITAR INFROMACION DE LOS PACIENTES

function Lista_Editar_Info_Pacinetes() {

    let nombre = $("#").val();
    $("#").val();
    $("#").val();
    $("#").val();
    $("#").val();

    if (nombre == "") {
        Swal.fire({
            title: 'Error!',
            text: 'No se permiten campos vacios',
            icon: 'warning',
            confirmButtonText: 'OK'
        });
    } else {

        let datos = new FormData();
        $.ajax({
            type: "POST",
            url: "lista_modelo.php?DTO=4",
            data: datos,
            cache: false,
            dataType: "json",
            processData: false,
            contentType: false,
            success: function (respuesta) {
                if (respuesta == 1) {
                    // SI LOS DATOS SE INSERTAN DE MANERA CORRECTA
                    Swal.fire({
                        title: 'Exito!',
                        text: 'Informacion actualizada',
                        icon: 'success',
                        confirmButtonText: 'OK'
                    });
                    //LIMPIAR MODAL  EDITAR
                    Lista_Linpiar_Campos();
                    //CERRA MODAL EDITAR
                    $("#").clic();

                } else {
                    //ERROR AL INSERTAR LOS DATOS
                    Swal.fire({
                        title: 'Error!',
                        text: 'Error al actualizar los datos',
                        icon: 'warning',
                        confirmButtonText: 'OK'
                    });
                }
            },
            error: () => {
                //SIN RESPUESTA DEL SERVIDRO O UN ERROR 400 O 500
                Swal.fire({
                    title: 'Error!',
                    text: 'Sin respuesta de la base de datos',
                    icon: 'error',
                    confirmButtonText: 'OK'
                });
            }
        });
    }
}

// FUNCION PARA LIMPIAR LOS FORYLARIOS DE INSERTAR Y EDITAR
function Lista_Linpiar_Campos() {

    //campos de los formualrios que seran limpiados una vez se ejecute la funcion
    $("#").val("");
    $("#").val("");
    $("#").val("");
    $("#").val("");
    $("#").val("");
    $("#").val("");
    $("#").val("");
    $("#").val("");

}