@extends('layouts.master')

@section('content')

<div class="main-content mt-5">
    @if ($errors->any())
    @foreach ($errors->all() as $error)
    <div class="alert alert-danger">{{$error}}</div>
    @endforeach
    @endif
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Edit Employee Info</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Employee::class) --}}
                <a class="btn btn-success mx-1" href="{{route('employees.index')}}">Back</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <form action="{{route('employees.update', $employee->id)}}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label for="" class="form-label">First Name</label>
                    <input name="first_name" type="text" class="form-control" value="{{$employee->first_name}}">
                </div>
                <div class="form-group mt-2">
                    <label for="" class="form-label">Last Name</label>
                    <input name="last_name" type="text" class="form-control" value="{{$employee->last_name}}">
                </div>
                <div class="form-group mt-2">
                    <label for="" class="form-label">Email</label>
                    <input name="email" type="email" class="form-control" value="{{$employee->email}}">
                </div>
                <div class="form-group mt-2">
                    <label for="" class="form-label">Phone</label>
                    <input name="phone" type="text" class="form-control" value="{{$employee->phone}}">
                </div>
                <div class="form-group mt-2">
                    <label for="" class="form-label">Company</label>
                    <select id="" class="form-control" name="company_id">
                        <option value="">Select</option>
                        @foreach ($companies as $company)
                        <option {{$company->id == $employee->company_id ? 'selected' : ''}} value="{{$company->id}}">{{$company->name}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mt-3">
                    <button class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
