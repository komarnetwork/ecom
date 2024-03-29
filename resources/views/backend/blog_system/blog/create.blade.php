@extends('backend.layouts.app')

@section('content')

<div class="row">
    <div class="col-lg-8 mx-auto">
        <div class="card">
            <div class="card-header">
                <h5 class="mb-0 h6">{{translate('Blog Information')}}</h5>
            </div>
            <div class="card-body">
                <form id="add_form" class="form-horizontal" action="{{ route('blog.store') }}" method="POST">
                    @csrf
                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">
                            {{translate('Blog Title')}}
                            <span class="text-danger">*</span>
                        </label>
                        <div class="col-md-9">
                            <input type="text" placeholder="{{translate('Blog Title')}}" onkeyup="makeSlug(this.value)"
                                id="title" name="title" class="form-control @error('title') @enderror" required>
                            @error('title')
                            <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row" id="category">
                        <label class="col-md-3 col-from-label">
                            {{translate('Category')}}
                            <span class="text-danger">*</span>
                        </label>
                        <div class="col-md-9">
                            <select class="form-control aiz-selectpicker @error('category_id') @enderror"
                                name="category_id" id="category_id" data-live-search="true" required>
                                @error('category_id')
                                <div class="invalid-feedback">{{ $message }}</div>
                                @enderror

                                @foreach ($blog_categories as $category)
                                <option value="{{ $category->id }}">
                                    {{ $category->name }}
                                </option>
                                @endforeach
                            </select>
                        </div>
                    </div>


                    <div class="form-group row">
                        <label class="col-md-3 col-form-label">{{translate('Slug')}}
                            <span class="text-danger">*</span></label>
                        <div class="col-md-9">
                            <input type="text" placeholder="{{translate('Slug')}}" name="slug" id="slug"
                                class="form-control">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-3 col-form-label" for="signinSrEmail">
                            {{translate('Banner')}}
                            <small>(1300x650)</small>
                        </label>
                        <div class="col-md-9">
                            <div class="input-group" data-toggle="aizuploader" data-type="image">
                                <div class="input-group-prepend">
                                    <div class="input-group-text bg-soft-secondary font-weight-medium">
                                        {{ translate('Browse')}}
                                    </div>
                                </div>
                                <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                                <input type="hidden" name="photo" class="selected-files">
                            </div>
                            <div class="file-preview box sm">
                            </div>
                        </div>
                    </div>

                    {{-- <div class="form-group row">
                        <label class="col-md-3 col-form-label">
                            {{translate('Short Description')}}
                    <span class="text-danger">*</span>
                    </label>
                    <div class="col-md-9">
                        <textarea name="short_description" rows="5" class="form-control" required=""></textarea>
                    </div>
            </div> --}}

            <div class="form-group row">
                <label class="col-md-3 col-from-label">
                    {{translate('Description')}}
                </label>
                <div class="col-md-9">
                    <textarea class="aiz-text-editor" name="details"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-3 col-from-label">{{translate('Tags')}} <span class="text-danger">*</span></label>
                <div class="col-md-8">
                    <input type="text" class="form-control aiz-tag-input" name="tags[]"
                        placeholder="{{ translate('Type and hit enter to add a tag') }}">
                    <small
                        class="text-muted">{{translate('This is used for search. Input those words by which cutomer can find this product.')}}</small>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-3 col-form-label">{{translate('Source')}}</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" name="source" placeholder="{{translate('Source')}}">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-3 col-form-label">{{translate('Meta Title')}}</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" name="meta_title" placeholder="{{translate('Meta Title')}}">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-3 col-form-label" for="signinSrEmail">
                    {{translate('Meta Image')}}
                    <small>(200x200)+</small>
                </label>
                <div class="col-md-9">
                    <div class="input-group" data-toggle="aizuploader" data-type="image">
                        <div class="input-group-prepend">
                            <div class="input-group-text bg-soft-secondary font-weight-medium">
                                {{ translate('Browse')}}
                            </div>
                        </div>
                        <div class="form-control file-amount">{{ translate('Choose File') }}</div>
                        <input type="hidden" name="meta_img" class="selected-files">
                    </div>
                    <div class="file-preview box sm">
                    </div>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-3 col-form-label">{{translate('Meta Description')}}</label>
                <div class="col-md-9">
                    <textarea name="meta_description" rows="5" class="form-control"></textarea>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-md-3 col-form-label">
                    {{translate('Meta Keywords')}}
                </label>
                <div class="col-md-9">
                    <input type="text" class="form-control" id="meta_keywords" name="meta_keywords"
                        placeholder="{{translate('Meta Keywords')}}">
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
</div>
@endsection

@section('script')
<script>
    function makeSlug(val) {
        let str = val;
        let output = str.replace(/\s+/g, '-').toLowerCase();
        $('#slug').val(output);
    }
</script>
@endsection
