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
                <b style="font-size: 18px;">Edit Comapny Info</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Employee::class) --}}
                <a class="btn btn-success mx-1" href="{{route('companies.index')}}">Back</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <form action="{{route('companies.update', $company->id)}}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <div>
                        <img style="width: 200px" src="{{asset($company->logo)}}" alt="">
                    </div>
                    <label for="" class="form-label">Logo</label>
                    <input name="logo" type="file" class="form-control">
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Name</label>
                    <input name="name" type="text" class="form-control" value="{{$company->name}}">
                </div>
                <div class="form-group">
                    <label for="" class="form-label">Email</label>
                    <input name="email" type="email" class="form-control" value="{{$company->email}}">
                </div>

                <div class="form-group mt-3">
                    <button class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

@endsection
