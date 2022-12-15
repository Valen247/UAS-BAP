@extends('layouts.app')

@section('title','Usage')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">Usage_History {{ $usage_history->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/admin/usage_-history') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        <a href="{{ url('/admin/usage_-history/' . $usage_history->id . '/edit') }}" title="Edit Usage_History"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>

                        <form method="POST" action="{{ url('admin/usage_history' . '/' . $usage_history->id) }}" accept-charset="UTF-8" style="display:inline">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="Delete Usage_History" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button>
                        </form>
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th>ID</th><td>{{ $usage_history->id }}</td>
                                    </tr>
                                    <tr><th> Nama </th><td> {{ $usage_history->nama }} </td></tr><tr><th> Date </th><td> {{ $usage_history->date }} </td></tr><tr><th> Time </th><td> {{ $usage_history->time }} </td></tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
