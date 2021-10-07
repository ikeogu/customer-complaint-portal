<x-admin-layout>
      <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Branches</h1>

                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            New Branch
                        </button>


                    </div>

                    <!-- Content Row -->
                    <div class="row">





                    <!-- DataTales Example -->
                    <div class="card shadow ">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Branches table</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>

                                        <tr>
                                            <th>Name</th>
                                            <th>Location</th>
                                            <th>Manager</th>
                                            <th>No of Customers</th>
                                            <th>No of Complaints</th>
                                            <th>Created</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>

                                    <tbody>


                                            @foreach ($branches as $key =>$item)
                                            <tr>
                                             <td>{{$item->name}}</td>
                                            <td>{{$item->address}} <br> {{$item->city}}<br> {{$item->state}}</td>
                                            <td>
                                               {{$item->manager->user->first_name }}  {{$item->manager->user->last_name }}
                                            </td>
                                             <td>
                                               {{count($item->customers)}}
                                            </td>
                                             <td>
                                               {{count($item->complaints) }}
                                            </td>
                                            <td>{{$item->created_at->diffForHumans()}}</td>
                                            <td>
                                                <a  class="btn btn-primary" data-toggle="modal" data-target="#viewModal-{{$key}}">
                                                 view

                                                </a>
                                                <a  class="btn btn-warning" data-toggle="modal" data-target="#deleteModal-{{$key}}">
                                                 Edit

                                                </a>
                                               <form method="post" action="{{route('branch.destroy',[$item->id])}}" >
                                                    {{ method_field('DELETE') }}
                                                    {{  csrf_field() }}
                                                    <button type="submit" class="btn btn-danger btn-sm">{{ trans('Delete') }}</button>
                                                    </form>
                                                                                <!-- Modal -->
                                                <div class="modal fade" id="viewModal-{{$key}}" tabindex="-1" role="dialog" aria-labelledby="viewModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="viewModalLabel">Branch</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">

                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Branch Name</label>
                                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$item->name}}" readonly>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Email</label>
                                                                    <input type="email" class="form-control" id="exampleInputPassword1" value="{{$item->email}}" readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Phone</label>
                                                                    <input type="tel" class="form-control" id="exampleInputPassword1" value="{{$item->phone}}" readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Address</label>
                                                                    <input type="text" class="form-control" id="exampleInputPassword1" value="{{$item->address}}" readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">City</label>
                                                                    <input type="text" class="form-control" id="exampleInputPassword1" value="{{$item->city}}"  readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">State</label>
                                                                    <input type="text" class="form-control" id="exampleInputPassword1" value="{{$item->state}}" readonly>
                                                                </div>


                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                                                 <!--Delete Modal -->
                                                <div class="modal fade" id="deleteModal-{{$key}}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="deleteModalLabel">Branch</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="{{route('branch.update',[$item->id])}}" method="POST">
                                                                @csrf
                                                                @method('put')
                                                                 <div class="form-group">
                                                                    <label for="exampleInputEmail1">Branch Name</label>
                                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$item->name}}" name="name">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Email</label>
                                                                    <input type="email" class="form-control" id="exampleInputPassword1" value="{{$item->email}}" name="email">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Phone</label>
                                                                    <input type="tel" class="form-control" id="exampleInputPassword1" value="{{$item->phone}}" name="phone">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Address</label>
                                                                    <input type="text" class="form-control" id="exampleInputPassword1" value="{{$item->address}}" name="address">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">City</label>
                                                                    <input type="text" class="form-control" id="exampleInputPassword1" value="{{$item->city}}"  name="city">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">State</label>
                                                                    <input type="text" class="form-control" id="exampleInputPassword1" value="{{$item->state}}" name="state">
                                                                </div>
                                                                 <button type="submit" class="btn btn-primary" >Update</button>

                                                            </form>



                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        @endforeach


                                    </tbody>
                                </table>
                                {{$branches->links()}}
                            </div>
                        </div>
                    </div>
                    </div>

                    <!-- Content Row -->


                </div>
                <!-- /.container-fluid -->
               <!-- Button trigger modal -->

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new Branch</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('branch.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">Branch Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Branch Name" name="name">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Email</label>
                            <input type="email" class="form-control" id="exampleInputPassword1" placeholder="Email" name="email">
                        </div>
                           <div class="form-group">
                            <label for="exampleInputPassword1">Phone</label>
                            <input type="tel" class="form-control" id="exampleInputPassword1" placeholder="Phone" name="phone">
                        </div>
                           <div class="form-group">
                            <label for="exampleInputPassword1">Address</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Branch Address" name="address">
                        </div>
                           <div class="form-group">
                            <label for="exampleInputPassword1">City</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="City" name="city">
                        </div>
                           <div class="form-group">
                            <label for="exampleInputPassword1">State</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="State" name="state">
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                        </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
                </div>
            </div>
            </div>

</x-admin-layout>
