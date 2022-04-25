<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <title>Registro Medico</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="container-fluid h-100 bg-light text-dark">
                <div class="row justify-content-center align-items-center">
                    <h1>REGISTRO DE PACIENTES</h1>
                </div>
                <hr />
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-lg-5">
                        <form class=" col-lg-12">
                            <div class="form-row">
                                <div class="form-group col-lg-6">
                                    <button type="button" class="btn btn-primary" onclick="Lista_Abrir_Modal_registar()">
                                        Registrar Informacion
                                    </button>
                                </div>
                                <div class="form-group col-lg-6">
                                    <button type="button" class="btn btn-info" onclick="Lista_Listar_Informacion_paciente()">
                                        Informacion Pacientes
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!---------------------------------------------------T A B L A L I S T A R  P A C I E N T E S --------------->
            <table class="table table-bordered" id="tabla_pacientes">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">DOCUMENTO</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">FECHA</th>
                        <th class="text-center" scope="col">PDF</th>
                        <th class="text-center" scope="col">EDITAR</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>{info1}</td>
                        <td>{info2}</td>
                        <td>{info3}</td>
                        <td>{info4}</td>
                        <td class="text-center"> <button onclick="Lista_Listar_Info_Pacinetes_Por_Id(this);Lista_Abrir_Modal_editar()" t-pi="id_1" class="shadow btn btn-outline-warning text-center "> Editar </button> </td>
                        <td class="text-center"> <button t-pe="id_2" type="button" class="shadow btn btn-outline-danger text-center "> PDF</button> </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>


    <!-------------------------------------modal para  registarr informacion de pacienets------------------------------------------->
    <div class="modal fade" id="agregar_info" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title col-lg-12 text-center" id="exampleModalLabel">Agregar registro</h5>
                </div>
                <div class="modal-body">
                    ... a que debia ir el fomrulario
                </div>
                <div class="modal-footer">
                    <button id="cerrar_modal_agregar" type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </div>
        </div>
    </div>

    <!-------------------------------------modal para  editar informacion de pacienets------------------------------------------->
    <div class="modal fade" id="editar_info" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <h5 class="modal-title col-lg-12 text-center" id="exampleModalLabel">Editar registro</h5>
                <div class="modal-body">
                    ... a que debia ir el fomrulario
                </div>
                <div class="modal-footer">
                    <button id="cerrar_modal_agregar" type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button onclick="Lista_Editar_Info_Pacinetes()" type="button" class="btn btn-primary">Guardar</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <!--pugguin para insertar sweet alert-->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!---------js propios------------>
    <script src="js/lista.js"></script>


</body>

</html>