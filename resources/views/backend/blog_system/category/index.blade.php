@extends('backend.layouts.app')

@section('css')
<!-- third party css -->
<link href="{{ static_asset('assets/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ static_asset('assets/datatables/responsive.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ static_asset('assets/datatables/buttons.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />
<link href="{{ static_asset('assets/datatables/select.bootstrap4.min.css') }}" rel="stylesheet" type="text/css" />

@endsection

@section('content')
<div class="aiz-titlebar text-left mt-2 mb-3">
    <div class="row align-items-center">
        <div class="col-md-6">
            <h1 class="h3">{{translate('All Blog Categories')}}</h1>
        </div>
        <div class="col-md-6 text-md-right text-white" id="addcblog">
            {{-- <a href="{{ route('cblog.create') }}" class="btn btn-primary">
            <span>{{translate('Add New category')}}</span>
            </a> --}}
        </div>

    </div>
</div>
<div class="card">
    <div class="card-body">

        <table class="table table-striped table-bordered dt-responsive nowrap mb-0" id="cblog-table" cellspacing="0"
            width="100%">
            <thead>
                <tr>
                    <th width="5%">#</th>
                    <th width="60px">{{translate('Name')}}</th>
                    <th width="60px">{{translate('Slug')}}</th>
                    <th width="10%" class="text-right">{{translate('Options')}}</th>
                </tr>
            </thead>

        </table>
    </div>
</div>

<!-- add / edit Modal -->
<div id="modal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="modal1" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title h6">{{translate('Add New category')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>

            <div class="modal-body text-center">
                <form id="add_form" class="form-horizontal" action="{{ route('cblog.index') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">{{translate('Name')}} <span
                                class="text-danger">*</span></label>
                        <div class="col-lg-7">
                            <input type="text" placeholder="{{translate('Name')}}" name="name" value="" class="form-control @error ('name')
                            is-invalid @enderror" required="true">
                            @error('name')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group mb-0 text-right">
                        <button type="submit" class="btn btn-primary">
                            {{translate('Save')}}
                        </button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div><!-- /.modal -->

@endsection

@section('modal')
{{-- @include('modals.delete_modal') --}}

@endsection

@section('script')
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

<script type="text/javascript">
    var table = $('#cblog-table').DataTable({
			   ordering: true,
               processing: true,
               serverSide: true,
               ajax: '{{ route('cblog.datatables') }}',
               columns: [
                        { data: 'id', name: 'id' },
                        { data: 'name', name: 'name' },
                        { data: 'slug', name: 'slug' },
            			{ data: 'action', searchable: false, orderable: false }
                     ],
            });

        $(function() {
        $("#addcblog").append(
                '<a class="btn btn-primary" data-href="{{route('cblog.index')}}" id="add-data" data-toggle="modal" data-target="#modal1">'+
            '<i class="las la-plus"></i> <span>{{translate('Add New category')}}</span>'+
            '</a>');
        });

</script>
@endsection
