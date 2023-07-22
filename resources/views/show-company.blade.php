@extends('layouts.master')

@section('content')

<div class="main-content mt-5">
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Company Overview</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Company::class) --}}
                <a class="btn btn-success mx-1" href="{{route('companies.index')}}">Back</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <table class="table table-striped table-bordered">
                <tbody>
                    <tr>
                        <td>Id</td>
                        <td>{{$company->id}}</td>
                    </tr>
                    <tr>
                        <td>Logo</td>
                        <td><img width="300" src="{{asset($company->logo)}}" alt=""></td>
                    </tr>

                    <tr>
                        <td>Name</td>
                        <td>{{$company->name}}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>{{$company->email}}</td>
                    </tr>
                    <tr>
                        <td>Create Date</td>
                        <td>{{date('d-m-Y', strtotime($company->created_at))}}</td>
                    </tr>

                </tbody>
            </table>

        </div>
    </div>
</div>

@endsection
