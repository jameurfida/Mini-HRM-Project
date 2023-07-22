@extends('layouts.master')

@section('header-content')
<!-- Page header -->
<div class="page-header d-print-none">
    <div class="container-xl">
        <div class="row g-2 align-items-center">
            <div class="col">
                <!-- Page pre-title -->
                <div class="page-pretitle">
                    Overview
                </div>
                <h2 class="page-title">
                    Dashboard
                </h2>
            </div>
        </div>
    </div>
</div>
@endsection

@section('content')
<div class="col-sm-6 col-lg-6">
    <div class="card">
        <div class="ribbon bg-red">Company List</div>
        <div class="card-body">
            <center><div class="h1 mt-2">Total Companies</div></center>
            <center><div class="btn h3 mb-2">{{$totalCompanies}}</div></center>
        </div>
        <div class="card-footer">
            <center><a href="{{route('companies.index')}}" class="btn btn-primary">View All Company</a></center>
        </div>
    </div>
</div>
<div class="col-sm-6 col-lg-6">
    <div class="card">
        <div class="ribbon bg-red">Employee List</div>
        <div class="card-body">
            <center><div class="h1 mt-2">Total Employees</div></center>
            <center><div class="btn h3 mb-2">{{$totalEmployees}}</div></center>
        </div>
        <div class="card-footer">
            <center><a href="{{route('employees.index')}}" class="btn btn-primary">View All Employee</a></center>
        </div>
    </div>
</div>
@endsection
