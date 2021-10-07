<x-admin-layout>
      <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Complaints</h1>


                    </div>

                    <!-- Content Row -->
                    <div class="row">





                    <!-- DataTales Example -->
                    <div class="card shadow ">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Complaints table</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>

                                        <tr>
                                            <th>Title</th>
                                            <th>Message</th>
                                            <th>Made By</th>
                                            <th>Branch</th>
                                            <th>Reviewed</th>
                                            <th>sent</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>

                                    <tbody>


                                            @foreach ($complaints as $key =>$item)
                                            <tr>
                                             <td>{{$item->title}}</td>
                                            <td>{{$item->message}}</td>
                                            <td>
                                               {{$item->customers->user->first_name }}  {{$item->customers->user->last_name }}
                                            </td>
                                             <td>
                                               {{$item->customers->branch->name}}
                                            </td>
                                             <td>
                                               @if ($item->reviewed == 1)
                                                Reviewed
                                               @else
                                                Not Reviewed
                                               @endif
                                            </td>
                                            <td>{{$item->created_at->diffForHumans()}}</td>
                                            <td>
                                                <a  class="btn btn-primary" href="{{route('RW',[$item->id])}}">
                                                 Review

                                                </a>
                                                    <form method="post" action="{{route('complaint.destroy',[$item->id])}}" >
                                                    {{ method_field('DELETE') }}
                                                    {{  csrf_field() }}
                                                    <button type="submit" class="btn btn-danger btn-sm">{{ trans('Delete') }}</button>
                                                    </form>


                                            </td>
                                        </tr>
                                        @endforeach


                                    </tbody>
                                </table>
                                {{$complaints->links()}}
                            </div>
                        </div>
                    </div>
                    </div>

                    <!-- Content Row -->


                </div>
                <!-- /.container-fluid -->
               <!-- Button trigger modal -->


</x-admin-layout>
