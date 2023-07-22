@extends('layouts.master')

@section('content')

<div class="main-content mt-5">
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Trashed Companies</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Company::class) --}}
                <a class="btn btn-success mx-1" href="{{route('companies.index')}}">Back</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <table class="table table-striped table-bordered">
                <thead style="background: #f2f2f2">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col" style="width: 10%">Logo</th>
                        <th scope="col" style="width: 20%">Name</th>
                        <th scope="col" style="width: 30%">Email</th>
                        <th scope="col" style="width: 10%">Create Date</th>
                        <th scope="col" style="width: 10%">Delete Date</th>
                        <th scope="col" style="width: 20%">Action</th>

                    </tr>
                </thead>
                <tbody>
                    @foreach ($companies as $company)
                    <tr>
                        <th scope="row">{{$company->id}}</th>
                        <td>
                            <img src="{{asset($company->logo)}}" alt="" width="80">
                        </td>
                        <td>{{$company->name}}</td>
                        <td>{{$company->email}}</td>
                        <td>{{date('d-m-Y', strtotime($company->created_at))}}</td>
                        <td>{{date('d-m-Y', strtotime($company->deleted_at))}}</td>
                        <td>
                            <div class="d-flex">
                                <a class="btn-sm btn-success btn"
                                    href="{{route('companies.restore',$company->id)}}">Restore</a>

                                <form action="{{route('companies.force_delete', $company->id)}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn-sm btn-danger btn">Delete</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

@endsection
