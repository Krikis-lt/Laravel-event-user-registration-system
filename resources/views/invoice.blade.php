<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
    </head>
    <style>
        td {
            border-bottom: 1px solid #ddd;
            margin: 5px;
        }

    </style>
    <body>
        <div>
            <div style="text-align:center;"><img style="width: 250px" src="{{public_path() . '/img/vsta.png'}}" alt="img"></div>
            <br>
            <div style="float: left;width:40%;">
                Vakaru stalo teniso akademija<br>
                Taikos pr. 70, LT-93219 Klaipeda<br>
                Im. kodas : 303290775<br>
                PVM kodas : LT100009938713<br>
                A/s : LT957044060007958790<br>
                Bankas: SEB Bankas<br>
                Mobilus telefonas +370 630 60677<br>
                www.vsta.lt<br>
                </p>
            </div>
            <div style="float: right;width:40%;">
                {{ $last->cname }}<br/>
                {{ $last->address }}<br/>
                {{ $last->ccode }}<br/>
                {{ $last->vatcode }}<br/>
                {{ $last->email }}<Br>
            </div>
        </div>
        <div><br>
            <div style="text-align: center; padding-top: 200px;">
                <h2>IŠANKSTINE SASKAITA</h2>
            </div>
        </div>
        <div>
            <div style="float: right">
                <p>Išankstine saskaita:<br/>
                Nr.:{{ $last->accnr }}<br/>
                Data: {{ $today = date("Y/m/d") }}<br/>
                </p> 
            </div>
            <div style="text-align: right">
                <p><br/>
                <br/>
                <br>
                </p>
            </div>
        </div>
        <div>
            <table cellspacing="0">
                <thead style="background-color: #eeeeee; border: none;">
                    <tr>
                        <th width="120px" height="35px" style="margin: 5px">Turnyro data</th>
                        <th width="220px">Pavadinimas</th>
                        <th width="260px">Komanda</th>
                        <th width="118px">Suma</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td height="45px">{{ $last->edate }}</td>
                        <td>{{ $last->ename }}</td>
                        <td>{{ $last->tname }}</td>
                        <td>€{{ $last->price }}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>