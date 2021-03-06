@extends('layout.app')
@section('content')



    <div id="mainDiv" class="container d-none">

        <div class="row">
            <div class="col-md-12 p-5">

                @if(Session::has('success'))
                    <div class="alert alert-success">
                        {{Session::get('success')}}
                    </div>

                @elseif(Session::has('error'))
                    <div class="alert alert-danger">
                        {{Session::get('error')}}
                    </div>
                @endif


                @if($user_type=='Admin')
                <button id="addFormBtn" type="button" class="mt-3 btn btn-sm btn-danger">Add New</button>

                 @endif



                <table id="userDataTable" class="table table-striped table-sm table-bordered" cellspacing="0" width="100%">

                    <thead>
                    <tr>
                        <th class="th-sm">Name</th>
                        <th class="th-sm">Email</th>
                        <th class="th-sm">User Type</th>


                    </tr>
                    </thead>
                    <tbody id="user_table">



                    </tbody>
                </table>

            </div>
        </div>
    </div>









    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">Add New User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form  action="/userAdd" method="POST" class="m-5 loginForm">
                    @csrf
                <div class="modal-body mx-3">
                    <div class="md-form mb-5">

                        <input   placeholder="Name" name="name" type="text" id="userNameAddId" class="form-control validate">
                    </div>



                    <div class="md-form mb-5">

                        <input   placeholder="Email" name="email" type="email" id="userEmailAddId" class="form-control validate">
                    </div>

                    <div class="md-form mb-5">

                        <input   placeholder="Enter The Password" name="pass" type="password" id="userPassword" class="form-control validate">
                    </div>

                    <div class="md-form mb-5 mr-5">

                        <select name="user_type" class="browser-default form-control" >
                            <option>User Type</option>
                            <option value="Admin">Admin</option>
                            <option value="Customer">Customer</option>
                        </select>
                    </div>






                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">
                        Close
                    </button>
                    <button type="submit" id="userAddConfirmBtn" class="btn btn-sm btn-success">Save</button>
                </div>

                </form>
            </div>
        </div>
    </div>




@endsection

@section('script')
        <script type="text/javascript">
            getUsersData();


            function getUsersData() {

                axios.get("/getUserData")
                    .then(function(response) {

                        if (response.status == 200) {

                            $('#mainDiv').removeClass('d-none')


                            $('#userDataTable').DataTable().destroy();
                            $('#user_table').empty();
                            var jsonData = response.data;
                            // $.each(jsonData, function (i, item) {   })
                            for (var i = 0; i < jsonData.length; i++) {

                                // var obj = jsonData[i];
                                // console.log(obj.id);
                                $('<tr>').html(
                                    "<td>" + jsonData[i].name + "</td>" +
                                    "<td>" + jsonData[i].email + "</td>" +
                                    "<td>" + jsonData[i].user_type + "</td>"

                                ).appendTo('#user_table');
                            }

                            $('#userDataTable').DataTable({"order":false});
                            $('.dataTables_length').addClass('bs-select');

                        }
                    }).catch(function(error) {


                })

            }

     ;





            $('#addFormBtn').click(function () {
                $('#addModal').modal('show');
            })








        </script>

@endsection
