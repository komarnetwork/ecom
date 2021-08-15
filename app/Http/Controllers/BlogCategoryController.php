<?php

namespace App\Http\Controllers;

use Validator;
use App\BlogCategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\Http\Controllers\Controller;

class BlogCategoryController extends Controller
{
    //*** JSON Request

    public function datatables()
    {
        $datas = BlogCategory::orderBy('id', 'desc')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->addColumn('action', function (BlogCategory $data) {
                return '<div class="action-list"><a data-href="' . route('cblog.edit', $data->id) . '" class="btn btn-soft-primary btn-icon btn-circle btn-sm"> <i class="las la-pen"></i></a>
                <a href="javascript:;" data-href="' . route('cblog.delete', $data->id) . '" data-toggle="modal" data-target="#delete-modal" class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete"><i class="las la-trash"></i></a></div>';
            })
            ->toJson(); //--- Returning Json Data To Client Side
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // return "dad";
        return view('backend.blog_system.category.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.blog_system.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //--- Validation Section
        // $rules = [
        //     'name' => 'required|unique:blog_categories|max:20',
        //     'slug' => 'unique:blog_categories|max:20'
        // ];
        // $customs = [
        //     'name.unique' => 'This name has already been taken.',
        //     'slug.unique' => 'This slug has already been taken.'
        // ];

        $request->validate([
            'name' => 'required|unique:blog_categories|max:20',
            'slug' => 'unique:blog_categories|max:20'
        ]);

        // $validator = Validator::make($request->all(), $rules, $customs);
        // if ($validator->fails()) {
        //     return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        // }
        //--- Validation Section Ends

        //--- Logic Section
        // $data = new BlogCategory;
        // $input = $request->all();
        // $data->fill($input)->save();

        $data = BlogCategory::create([
            'name' => $request->name,
            'slug' => Str::slug($request->name)
        ]);
        $data->save();
        //--- Logic Section Ends

        //--- Redirect Section
        // $msg = 'New Data Added Successfully.';
        // return response()->json($msg);
        flash(translate('Blog category has been created successfully'))->success();
        return redirect()->route('cblog.index');
        //--- Redirect Section Ends
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    //*** GET Request
    public function edit(Request $request, $id)
    {
        if ($request->isMethod('post')) {
            # code...
            $data = $request->all();

            dd($data);
        }
        // $data = BlogCategory::findOrFail($id);
        // return view('backend.blog_system.category.edit',  compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    //*** POST Request
    public function update(Request $request, $id)
    {
        //--- Validation Section
        $rules = [
            'name' => 'unique:blog_categories,name,' . $id,
            'slug' => 'unique:blog_categories,slug,' . $id
        ];
        $customs = [
            'name.unique' => 'This name has already been taken.',
            'slug.unique' => 'This slug has already been taken.'
        ];
        $validator = Validator::make($request->all(), $rules, $customs);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }
        //--- Validation Section Ends

        //--- Logic Section
        $data = BlogCategory::findOrFail($id);
        $input = $request->all();
        $data->update($input);
        //--- Logic Section Ends

        // flash(translate('Blog category has been updated successfully'))->success();

        //--- Redirect Section
        $msg = 'Data Updated Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }
}
