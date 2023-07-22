@extends('layouts.master')

@section('content')

<div class="main-content">
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Company List</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Company::class) --}}
                <a class="btn btn-success mx-1" href="{{route('companies.create')}}">Create New</a>
                <a class="btn btn-warning mx-1" href="{{route('companies.trashed')}}">Deleted Items</a>
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
                        <th scope="col" style="width: 20%">Actions</th>

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
                        <td>
                            <div class="d-flex">
                                <a class="btn-sm btn-success btn rounded"
                                    href="{{route('companies.show', $company->id)}}">View</a>

                                {{-- @can('update', $company) --}}

                                {{-- <a class="btn-sm btn-primary btn mx-2" href="{{route('posts.edit', $post->id)}}">Edit</a>
                                --}}
                                <a class="btn-sm btn-primary btn rounded mx-3"
                                    href="{{route('companies.edit', $company->id)}}">Edit</a>

                                {{-- @endcan --}}
                                {{-- <a class="btn-sm btn-danger btn" href="">Delete</a> --}}
                                {{-- @can('delete', $cost) --}}

                                <form action="{{route('companies.destroy', $company->id)}}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn-sm btn-danger btn rounded">Delete</button>
                                </form>
                                {{-- @endcan --}}

                            </div>

                        </td>

                    </tr>
                    @endforeach

                </tbody>

            </table>
            {{$companies->links('pagination::bootstrap-5')}}

        </div>
    </div>
</div>

@endsection
