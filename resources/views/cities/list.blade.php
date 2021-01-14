@extends('layouts.app')


@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Menu</div>
                    <div class="card-body">
                        <ul>
                            <li><a href="{{route('home')}}">Dashboard</a></li>
                            <li><a href="{{route('cities')}}">List Cities</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">List Cities</div>

                    <div class="card-body">
                        <div>
                            <form action="{{route('cities')}}" method="get">
                                @csrf
                                <div class="form-row">
                                    <div class="form-group">
                                        <label for="name">City Name</label>
                                        <input type="text" class="form-control" name="name" value="{{Request::get('name')}}">
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="form-group">
                                        <input type="submit" value="Filter" class="btn btn-primary">
                                    </div>
                                </div>

                            </form>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Latitude</th>
                                    <th>Longitude</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($cities as $city)
                                        <tr>
                                            <td>{{$city->id}}</td>
                                            <td>{{$city->name}}</td>
                                            <td>{{$city->latitude}}</td>
                                            <td>{{$city->longitude}}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div>
                            Showing {{$cities->firstItem()}} to {{$cities->lastItem()}} of {{$cities->total()}} entries
                            <br>
                            {{$cities->appends($data)->links()}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
