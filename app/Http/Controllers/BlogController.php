<?php

namespace App\Http\Controllers;

use App\Blog;
// use Datatables;
use App\BlogCategory;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\Http\Controllers\Controller;

class BlogController extends Controller
{

    //*** JSON Request
    public function datatables()
    {
        $datas = Blog::with('category')->orderBy('id', 'desc')->get();
        //--- Integrating This Collection Into Datatables
        return Datatables::of($datas)
            ->editColumn('photo', function (Blog $data) {
                $photo = $data->photo ? url('public/uploads/all/' . $data->photo) : url('public/assets/img/placeholder.jpg');
                return '<img src="' . $photo . '" alt="Image">';
            })
            ->addColumn('action', function (Blog $data) {
                return '<div class="action-list"><a class="btn btn-soft-primary btn-icon btn-circle btn-sm" href="' . route('blog.edit', $data->id) . '" > <i class="las la-pen"></i></a>
                <a class="btn btn-soft-danger btn-icon btn-circle btn-sm confirm-delete" href="javascript:;" data-href="' . route('blog.delete', $data->id) . '" data-toggle="modal" data-target="#delete-modal" class="delete"><i class="las la-trash"></i></a></div>';
            })
            ->rawColumns(['photo', 'action'])
            ->toJson(); //--- Returning Json Data To Client Side
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    //*** GET Request
    public function index(Request $request)
    {
        // $sort_search = null;
        // $blogs = Blog::orderBy('created_at', 'desc');

        // if ($request->search != null) {
        //     $blogs = $blogs->where('title', 'like', '%' . $request->search . '%');
        //     $sort_search = $request->search;
        // }

        // $blogs = $blogs->paginate(15);

        return view('backend.blog_system.blog.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    //*** GET Request
    public function create()
    {
        $blog_categories = BlogCategory::all();
        return view('backend.blog_system.blog.create', compact('blog_categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'category_id' => 'required',
            'title' => 'required|unique:blogs|max:199',
            'photo' => 'max:150',
            'source' => 'max:25',
        ]);

        $blog = new Blog;

        $blog->category_id = $request->category_id;
        $blog->title = $request->title;
        $blog->slug = Str::slug($request->title);
        $blog->photo = $request->photo;
        // $blog->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));
        $blog->details = $request->details;

        $blog->meta_title = $request->title;
        $blog->meta_img = $request->meta_img;
        $tags = array();
        if ($request->tags[0] != null) {
            foreach (json_decode($request->tags[0]) as $key => $tag) {
                array_push($tags, $tag->value);
            }
        }
        $blog->tags = implode(',', $tags);
        $blog->meta_description = $request->meta_description;
        $blog->meta_keywords = $request->meta_keywords;

        $blog->save();

        flash(translate('Blog post has been created successfully'))->success();
        return redirect()->route('blog.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $blog = Blog::find($id);
        $blog_categories = BlogCategory::all();

        return view('backend.blog_system.blog.edit', compact('blog', 'blog_categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $request->validate([
        //     'category_id' => 'required',
        //     'title' => 'required|max:255',
        // ]);

        // $blog = Blog::find($id);

        // $blog->category_id = $request->category_id;
        // $blog->title = $request->title;
        // $blog->banner = $request->banner;
        // $blog->slug = preg_replace('/[^A-Za-z0-9\-]/', '', str_replace(' ', '-', $request->slug));
        // $blog->short_description = $request->short_description;
        // $blog->description = $request->description;

        // $blog->meta_title = $request->meta_title;
        // $blog->meta_img = $request->meta_img;
        // $blog->meta_description = $request->meta_description;
        // $blog->meta_keywords = $request->meta_keywords;

        // $blog->save();

        // flash(translate('Blog post has been updated successfully'))->success();
        // return redirect()->route('blog.index');
    }

    public function change_status(Request $request)
    {
        // $blog = Blog::find($request->id);
        // $blog->status = $request->status;

        // $blog->save();
        // return 1;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Blog::find($id)->delete();

        // return redirect('admin/blogs');

        $data = Blog::findOrFail($id);
        //If Photo Doesn't Exist
        if ($data->photo == null) {
            $data->delete();
            //--- Redirect Section
            $msg = 'Data Deleted Successfully.';
            return response()->json($msg);
            //--- Redirect Section Ends
        }
        //If Photo Exist
        if (file_exists(public_path() . '/assets/all/' . $data->photo)) {
            unlink(public_path() . '/assets/all/' . $data->photo);
        }
        $data->delete();
        //--- Redirect Section
        $msg = 'Data Deleted Successfully.';
        return response()->json($msg);
        //--- Redirect Section Ends
    }


    public function all_blog()
    {
        $blogs = Blog::where('status', 1)->orderBy('created_at', 'desc')->paginate(12);
        return view("frontend.blog.listing", compact('blogs'));
    }

    public function blog_details($slug)
    {
        $blog = Blog::where('slug', $slug)->FirstOrFail();
        return view("frontend.blog.details", compact('blog'));
    }
}
