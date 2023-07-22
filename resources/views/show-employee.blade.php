@extends('layouts.master')

@section('content')

<div class="main-content mt-5">
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Employee Overview</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Employee::class) --}}
                <a class="btn btn-success mx-1" href="{{route('employees.index')}}">Back</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <table class="table table-striped table-bordered">
                <tbody>
                    <tr>
                        <td>Id</td>
                        <td>{{$employee->id}}</td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td>{{$employee->first_name}}</td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>{{$employee->last_name}}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>{{$employee->email}}</td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>{{$employee->phone}}</td>
                    </tr>
                    <tr>
                        <td>Company</td>
                        <td>{{$employee->company->name}}</td>
                    </tr>
                    <tr>
                        <td>Create Date</td>
                        <td>{{date('d-m-Y', strtotime($employee->created_at))}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

@endsection
