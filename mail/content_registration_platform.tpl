
<h3>Hola!,{{ complete_name }}</h3>

<p>Te queremos dar la más cordial bienvenida a tu aula virtual.</p>
<p>Tus datos de acceso son los siguientes:</p>

<div style="background: #F5EED0; padding: 10px 20px;">
    <p><strong>URL de acceso</strong>: <a href="{{ _p.web }}">{{ _s.site_name }}</a><br>
    <strong>{{ 'Username'|get_lang }} :</strong> {{ login_name }}<br>
        <strong> {{ 'Pass'|get_lang }} :</strong> {{ original_password }}</p>
</div>

<p>Te recordamos cambiar la contraseña de tu inicio de sesión.
    Cualquier duda técnica nos puedes escribir al email <strong>academy@proikos.pe</strong>
</p>

<p style="color: #EF7C00; font-weight: bold; font-size: 18px; text-align: center;">Saludos. Equipo online</p>
