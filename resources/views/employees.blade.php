@extends('layouts.master')

@section('content')

<div class="main-content">
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Employee List</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Employee::class) --}}
                <a class="btn btn-success mx-1" href="{{route('employees.create')}}">Create New</a>
                <a class="btn btn-warning mx-1" href="{{route('employees.trashed')}}">Deleted Items</a>
                {{-- @endcan --}}
            </div>
        </div>

        <div class="card-body">
            <table class="table table-striped table-bordered">
                <thead style="background: #f2f2f2">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col" style="width: 15%">First Name</th>
                        <th scope="col" style="width: 15%">Last Name</th>
                        <th scope="col" style="width: 15%">Email</th>
                        <th scope="col" style="width: 15%">Company</th>
                        <th scope="col" style="width: 15%">Phone</th>
                        <th scope="col" style="width: 15%">Create Date</th>
                        <th scope="col" style="width: 15%">Actions</th>

                    </tr>
                </thead>
                <tbody>
                    @foreach ($employees as $employee)
                    <tr>
                        <th scope="row">{{$employee->id}}</th>
                        <td>{{$employee->first_name}}</td>
                        <td>{{$employee->last_name}}</td>
                        <td>{{$employee->email}}</td>
                        <td>{{$employee->company->name}}</td>
                        <td>{{$employee->phone}}</td>
                        <td>{{date('d-m-Y', strtotime($employee->created_at))}}</td>
                        <td>
                            <div class="d-flex">
                                <a class="btn-sm btn-success btn rounded"
                                    href="{{route('employees.show', $employee->id)}}">View</a>

                                {{-- @can('update', $employee) --}}

                                {{-- <a class="btn-sm btn-primary btn mx-2" href="{{route('posts.edit', $post->id)}}">Edit</a>
                                --}}
                                <a class="btn-sm btn-primary btn rounded mx-3"
                                    href="{{route('employees.edit', $employee->id)}}">Edit</a>

                                {{-- @endcan --}}
                                {{-- <a class="btn-sm btn-danger btn" href="">Delete</a> --}}
                                {{-- @can('delete', $employee) --}}

                                <form action="{{route('employees.destroy', $employee->id)}}" method="POST">
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
            {{$employees->links('pagination::bootstrap-5')}}

        </div>
    </div>
</div>

@endsection
