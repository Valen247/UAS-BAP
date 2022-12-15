@extends('layouts.app')

@section('title','Laporan Mahasiswa')

@section('content')

    <html>
        <body>
        <h1></h1>
            <div class="media">
                <img src='{{ asset("https://cdn.discordapp.com/attachments/873955007706300436/1052913723385335829/Logo-UPH-Universitas-Pelita-Harapan-Original-PNG.png") }}' alt="Logo UPH" class="img-size-50 img-circle mr-10"> 
                <div class="media-body">
                    <h3 class="dropdown-item-title">
                        Name : Alvin Valencia
                    </h3>
                    <h3 class="dropdown-item-title">
                        StudentID : 03081190020
                    <span class="float-right text-sm text-warning"></span>
                    </h3>
                    <p class="text-sm">19SI1 | Business Aplication Programming</p>
                    <p class="text-sm text-muted"><i class="far fa-file mr-1"></i> Final Exam Bussiness Aplication Programming</p>
                </div>
            </div>
    </html>
        <style>
            body{
                padding: 15px;
            }
            h5{
                margin-top: -15px;
            }
            table, th, td {
            border: 1px solid;
            }
        </style>
        <br>
        <a target="_blank" href="/laporan/mahasiswa/pdf" 
        class="btn btn-primary">Cetak PDF</a>
        <br>
        <h1>
            <center>LOUNGE BOOKING<br></center>
            <center>UNIVERSITAS PELITA HARAPAN<br></center>
        <br>
        </h1>
        <h5>
            Jalan. Imam Bonjol No. 1<br>
            Tlp. 061.68541656
        </h5>
        <br>
        <center><h3>Laporan Mahasiswa</h3></center>
        <table>
            <tr>
                <th>NIM</th>
                <th>Nama</th>
                <th>Kelas</th>
                <th>Email</th>
            </tr>
            @foreach ($mahasiswa as $mhs)
                <tr>
                    <td>{{$mhs->nim}}</td>
                    <td>{{$mhs->nama}}</td>
                    <td>{{$mhs->kelas}}</td>
                    <td>{{$mhs->email}}</td>
                </tr>
            @endforeach
        </table>
@endsection