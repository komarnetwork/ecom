@extends('backend.layouts.app')

@section('css')
{{-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css"> --}}

{{-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"> --}}

<!-- third party css -->
<link href="{{ static_asset('assets/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ static_asset('assets/datatables/responsive.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ static_asset('assets/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ static_asset('assets/datatables/select.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

@endsection
@section('content')

<div class="aiz-titlebar text-left mt-2 mb-3">
    <div class="row align-items-center">
        <div class="col-auto">
            <h1 class="h3">{{translate('All Posts')}}</h1>
        </div>
        <div class="col text-right">
            <a href="{{ route('blog.create') }}" class="btn btn-circle btn-info">
                <span>{{translate('Add New Post')}}</span>
            </a>
        </div>
    </div>
</div>
<br>

<div class="card">
    <div class="card-header row gutters-5">
        <div class="col text-center text-md-left">
            <h5 class="mb-md-0 h6">{{ translate('All blog posts') }}</h5>
        </div>
    </div>
    <div class="col-lg-12 col-md-4">
        <div class="card-body">
            <table class="table table-striped table-bordered dt-responsive nowrap mb-0" id="datatable-buttons"
                cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th width="5%">#</th>
                        <th width="50px">{{translate('Featured Image')}}</th>
                        <th width="60pxpx">{{translate('Post Title')}}</th>
                        <th width="5%">{{translate('Views')}}</th>
                        <th width="40px">{{translate('Created At')}}</th>
                        <th class="text-center" width="50px">{{translate('Options')}}</th>
                    </tr>
                </thead>

            </table>
        </div>
    </div>
</div>

@endsection

@section('modal')
@include('modals.delete_modal')
@endsection


@section('script')
<!-- jQuery -->
{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> --}}
<!-- DataTables -->
{{-- <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script> --}}
{{-- <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script> --}}


<!-- datatable js -->
<script src="{{ static_asset('assets/datatables/jquery.dataTables.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/dataTables.bootstrap4.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/dataTables.responsive.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/responsive.bootstrap4.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/dataTables.buttons.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/buttons.bootstrap4.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/buttons.html5.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/buttons.flash.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/buttons.print.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/dataTables.keyTable.min.js') }}"></script>
<script src="{{ static_asset('assets/datatables/dataTables.select.min.js') }}"></script>
<!-- Datatables init -->
{{-- <script src="{{ static_asset('assets/datatables/datatables.init.js') }}"></script> --}}

<script type="text/javascript">
    function change_status(el){
            var status = 0;
            if(el.checked){
                var status = 1;
            }
            $.post('{{ route('blog.change-status') }}', {_token:'{{ csrf_token() }}', id:el.value, status:status}, function(data){
                if(data == 1){
                    AIZ.plugins.notify('success', '{{ translate('Change blog status successfully') }}');
                }
                else{
                    AIZ.plugins.notify('danger', '{{ translate('Something went wrong') }}');
                }
            });
        }
        $(document).ready(function () {
    var t = $("#datatable-buttons").DataTable({
        ordering: true,
        processing: true,
        serverSide: true,
        ajax: '{!! route('blog.datatables') !!}',
        lengthChange: !1,
        buttons: ["copy", "print"],
        columns: [{
                data: 'id',
                name: 'id'
            },
            {
                data: 'photo',
                name: 'photo',
                searchable: false,
                orderable: false
            },
            {
                data: 'title',
                name: 'title'
            },
            {
                data: 'views',
                name: 'views'
            },
            {
                data: 'created_at',
                name: 'created_at',
                searchable: false,
                orderable: false
            },
            {
                data: 'action',
                searchable: false,
                orderable: false
            }
        ]

    });
});
</script>
@endsection
