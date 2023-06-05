<div class="custompage">
    <div class="limiter">
        <div class="container-login">
            <div class="wrap-login width-register">
                <div class="logo-register">
                    <a href="{{ _p.web }}">
                    <img width="200px" title="{{ _s.site_name }}" src="{{ _p.web_css_theme }}images/logo.png">
                    </a>
                </div>
                <h3 class="title">Registro nuevo usuario</h3>
                <form class="" action="/main/auth/inscription.php" method="post" name="registration" id="registration">
                <div class="panel panel-default">
                    <div class="panel-heading panel-user">
                        <h3 class="panel-title">Datos personales</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lastname"><span class="form_required">*</span> Apellidos</label>
                                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="">
                                    <div class="help-block">
                                        Escribe correctamente tus apellidos para usarlos en tus certificaciones.
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="firstname"><span class="form_required">*</span> Nombres</label>
                                    <input type="text" class="form-control" id="firstname" name="firstname" placeholder="">
                                    <div class="help-block">
                                        Escribe correctamente tus nombres para usarlos en tus certificaciones.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email"><span class="form_required">*</span> Correo electrónico</label>
                                    <input type="text" class="form-control" id="email" name="email" placeholder="tuemail@email.com">
                                    <div class="help-block">
                                        Escribe correctamente tu correo electrónico para comunicarnos contigo
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="phone"><span class="form_required">*</span> Telefono / Celular</label>
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="">
                                    <div class="help-block">
                                        Escribe correctamente tu número de celular para comunicarnos contigo
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="type_document"><span class="form_required">*</span> Tipo de documento</label>
                                    <select name="type_document" id="type_document" class="form-control bootstrap-select">
                                        <option value="1">DNI</option>
                                        <option value="2">Carnet de extranjería</option>
                                        <option value="3">Pasaporte</option>
                                        <option value="4">RUC</option>
                                        <option value="5">Otros</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="number_document"><span class="form_required">*</span> Nº de documento</label>
                                    <input type="text" class="form-control" id="number_document" name="number_document" placeholder="">
                                    <div class="help-block">
                                        Escribe correctamente tu Nª de documento para poder identificarte
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="age">Edad</label>
                                    <input type="text" class="form-control" id="age" name="age" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="gender">Género</label>
                                    <select name="gender" id="gender" class="form-control bootstrap-select">
                                        <option value="M">Masculino</option>
                                        <option value="F">Femenino</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="instruction">Grado de instrucción</label>
                                    <select name="instruction" id="instruction" class="form-control bootstrap-select">
                                        <option value="1">Primaria</option>
                                        <option value="2">Secundaria</option>
                                        <option value="3">Técnica superior</option>
                                        <option value="4">Universitaria Bachiller</option>
                                        <option value="5">Universitaria Titulado</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading panel-user">
                        <h3 class="panel-title">Datos de empresa</h3>
                    </div>
                    <div class="panel-body">

                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="company">Nombre de la empresa</label>
                                    <input type="text" class="form-control" id="company" name="company" placeholder="">
                                    <div class="help-block">
                                        Escribe correctamente el nombre de tu empresa para identificarla
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="contact_manager">Administrador de contrato</label>
                                    <input type="text" class="form-control" id="contact_manager" name="contact_manager" placeholder="">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="position">Puesto</label>
                                    <input type="text" class="form-control" id="position" name="position" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="stakeholder">Stakeholders</label>
                                    <select name="stakeholder" id="stakeholder" class="form-control bootstrap-select">
                                        <option value="1">Personal</option>
                                        <option value="2">Propio</option>
                                        <option value="3">Contratista</option>
                                        <option value="4">Cliente</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="employment_category">Categoría</label>
                                    <select name="employment_category" id="employment_category" class="form-control bootstrap-select">
                                        <option value="Funcionario">Funcionario</option>
                                        <option value="Empleado">Empleado</option>
                                        <option value="Jefe">Jefe</option>
                                        <option value="Capataz">Capataz</option>
                                        <option value="Técnico">Técnico</option>
                                        <option value="Operario">Operario</option>
                                        <option value="Oficial">Oficial</option>
                                        <option value="Peón">Peón</option>
                                        <option value="Otros">Otros</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="experience_time">Tiempo de experiencia</label>
                                    <input type="text" class="form-control" id="experience_time" name="experience_time" placeholder="">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="area">Área / Jefatura</label>
                                    <input type="text" class="form-control" id="area" name="area" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="department">Gerencia de Dpt.</label>
                                    <input type="text" class="form-control" id="department" name="department" placeholder="">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="headquarters">Sede</label>
                                    <input type="text" class="form-control" id="headquarters" name="headquarters" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <button class=" btn btn-primary btn-block" name="register" type="submit" id="registration_register">Registrar nuevo usuario</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <input name="_qf__registration" type="hidden" value="" id="registration__qf__registration">
                                <input name="item_id" type="hidden" value="0" id="registration_item_id">
                            </div>
                        </div>

                    </div>
                </div>
                </form>

                <div class="software-name">
                    <a href="{{_p.web}}" target="_blank">
                        {{ "PoweredByX" |get_lang | format(_s.software_name) }}
                    </a>&copy; {{ "now"|date("Y") }}
                </div>
            </div>
        </div>
    </div>
</div>
