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
                <b style="font-size: 18px;">Create New Company</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Company::class) --}}
                <a class="btn btn-success mx-1" href="{{route('companies.index')}}">Back</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <form action="{{route('companies.store')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="" class="form-label">Logo</label>
                    <input type="file" class="form-control" name="logo">
                </div>
                <div class="form-group">
                    <label for="" class="form-label mt-4">Name</label>
                    <input type="text" class="form-control" name="name">
                </div>
                <div class="form-group">
                    <label for="" class="form-label mt-4">Email</label>
                    <input type="email" class="form-control" name="email">
                </div>

                <div class="form-group mt-3">
                    <button class="btn btn-primary">Submit</button>
                </div>

            </form>

        </div>
    </div>
</div>

@endsection
