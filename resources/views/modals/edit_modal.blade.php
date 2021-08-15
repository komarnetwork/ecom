<!-- delete Modal -->
<div id="edit-modal" class="modal fade">
    <div class="modal-dialog modal-md modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title h6">{{translate('Edit Confirmation')}}</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            </div>
            <div class="modal-body text-center">
                <form id="add_form" class="form-horizontal" action="" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">{{translate('Name')}} <span
                                class="text-danger">*</span></label>

                        <div class="col-lg-7">
                            <input type="text" placeholder="{{translate('Name')}}" name="name" value=""
                                class="form-control" required="true">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">{{translate('Slug')}} <span
                                class="text-danger">*</span></label>

                        <div class="col-lg-7">
                            <input type="text" placeholder="{{translate('Slug')}}" name="slug" value=""
                                class="form-control" required="true">
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
