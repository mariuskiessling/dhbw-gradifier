<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>
            html, body {
                margin: 30px 25px;
                padding: 0;
                background-color: #f9f9f9;
            }

            * {
                font-family: Helvertica, Arial;
            }

            a {
                text-align: center;
                padding: 10px;
                background: red;
                color: #fff;
                font-weight: bold;
                text-decoration: none;
                border-radius: 4px;
                display: block;
            }

            #title {
                text-align: center;
                font-size: 1.3em;
            }

            h1, h2 {
                padding: 0;
                margin: 0;
            }

            hr {
                margin: 20px 0;
                display: block;
                border: 1px solid #969696;
            }

            .total-grade {
                padding: 5px;
                background-color: red;
                color: #fff;
                border-radius: 4px;
                margin-left: 5px;
            }

            table {
                border-collapse: collapse;
                border-spacing: 0;
                border: 1px solid #9a9a9a;
                text-align: left;
            }

            table td, table th {
                padding: 5px 10px;
            }

            table th {
                font-weight: bold;
                background-color: #ebe7e7;
            }
        </style>
    </head>
    <body>
        <a href="https://dualis.dhbw.de/">Click here to open Dualis</a>
        <p id="title">There are new grades in the following modules available:</p><br>

        <hr>
        {{range .}}
            <h1>{{.Name}}</h1>
            {{range $attempt := .Attempts}}
                <h2>{{$attempt.Label}}</h2>

                    {{range $event := .Events}}
                        {{if eq $event.Grade ""}}
                            <p>{{$event.Name}}</p>
                        {{end}}
                        {{if ne $event.Grade ""}}
                            <p>{{$event.Name}} <span class="total-grade">{{$event.Grade}}</span></p>
                        {{end}}


                        <table class="pure-table">
                            <tr>
                                <th>Exam</th>
                                <th>Grade</th>
                            </tr>
                            {{range $exam := .Exams}}
                                <tr>
                                    <td>{{$exam.Name}}</td>
                                    <td>{{$exam.Grade}}</td>
                                </tr>
                            {{end}}
                        </table>
                    {{end}}
            {{end}}
            <hr>
        {{end}}
    </body>
</html>
