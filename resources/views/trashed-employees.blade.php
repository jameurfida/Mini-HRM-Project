@extends('layouts.master')

@section('content')

<div class="main-content mt-5">
    <div class="card">
        <div class="card-header">
            <div class="col">
                <b style="font-size: 18px;">Trashed Employees</b>
            </div>
            <div class="col-auto">
                {{-- @can('create', \App\Models\Employees::class) --}}
                <a class="btn btn-success mx-1" href="{{route('employees.index')}}">Back</a>
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
                        <th scope="col" style="width: 15%">Delete Date</th>
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
                        <td>{{date('d-m-Y', strtotime($employee->deleted_at))}}</td>
                        <td>
                            <div class="d-flex">
                                <a class="btn-sm btn-success btn"
                                    href="{{route('employees.restore',$employee->id)}}">Restore</a>

                                <form action="{{route('employees.force_delete', $employee->id)}}" method="POST">
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
