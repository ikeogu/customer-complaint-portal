<x-admin-layout>

      <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Managers</h1>

                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            New Branch Manager
                        </button>


                    </div>

                    <!-- Content Row -->
                    <div class="row">





                    <!-- DataTales Example -->
                    <div class="card shadow ">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Managers table</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>

                                        <tr>
                                            <th>Full Name</th>
                                            <th>Phone</th>
                                            <th>Branch</th>

                                            <th>Created</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>

                                    <tbody>


                                            @foreach ($manager as $key =>$item)
                                             <tr>
                                             <td>{{$item->user->first_name ?? ''}} {{$item->user->last_name ?? ''}}</td>
                                            <td>{{$item->user->phone ?? ''}} </td>

                                             <td>
                                               {{$item->branch->name ?? ''}}
                                            </td>
                                            <td>{{$item->created_at->diffForHumans()}}</td>
                                            <td>
                                                <a  class="btn btn-primary" data-toggle="modal" data-target="#viewModal-{{$key}}">
                                                 view

                                                </a>
                                                <a  class="btn btn-warning" data-toggle="modal" data-target="#deleteModal-{{$key}}">
                                                 Edit

                                                </a>

                                                   <form method="post" action="{{route('manager.destroy',[$item->id])}}" >
                                                    {{ method_field('DELETE') }}
                                                    {{  csrf_field() }}
                                                    <button type="submit" class="btn btn-danger btn-sm">{{ trans('Delete') }}</button>
                                                    </form>
                                                                                <!-- Modal -->
                                                <div class="modal fade" id="viewModal-{{$key}}" tabindex="-1" role="dialog" aria-labelledby="viewModalLabel" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="viewModalLabel">Manager</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">

                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">First Name</label>
                                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$item->user->first_name}}" readonly>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Last Name</label>
                                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$item->user->last_name}}" readonly>

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Email</label>
                                                                    <input type="email" class="form-control" id="exampleInputPassword1" value="{{$item->user->email}}" readonly>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Phone</label>
                                                                    <input type="tel" class="form-control" id="exampleInputPassword1" value="{{$item->user->phone}}" readonly>
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
                                                            <form action="{{route('manager.update',[$item->id])}}" method="POST">
                                                                @csrf
                                                                @method('put')
                                                                 <div class="form-group">
                                                                    <label for="exampleInputEmail1">First Name</label>
                                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$item->user->first_name}}" name="first_name">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Last Name</label>
                                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$item->user->last_name}}" name="last_name">

                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Email</label>
                                                                    <input type="email" class="form-control" id="exampleInputPassword1" value="{{$item->user->email}}" name="email">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputPassword1">Phone</label>
                                                                    <input type="tel" class="form-control" id="exampleInputPassword1" value="{{$item->user->phone}}" name="phone">
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
                                {{$manager->links()}}
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
                    <h5 class="modal-title" id="exampleModalLabel">Add new Branch Manager</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="{{route('manager.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="exampleInputEmail1">First Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="First Name" name="first_name">

                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Last Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Last Name" name="last_name">

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
                            <label for="exampleInputPassword1">Branch</label>
                           <select name="branch" id="" class="form-control">
                               <option >Choose from options</option>
                               @foreach ($branches as $item)
                               <option value="{{$item->id}}"> {{$item->name}}</option>

                               @endforeach
                           </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Create</button>
                        </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
                </div>
            </div>
            </div>



</x-admin-layout>
