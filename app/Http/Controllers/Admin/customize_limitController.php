<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Models\customize_limit;
use Illuminate\Http\Request;

class customize_limitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $customize_limit = customize_limit::where('date', 'LIKE', "%$keyword%")
                ->orWhere('limit', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $customize_limit = customize_limit::latest()->paginate($perPage);
        }

        return view('admin.customize_limit.index', compact('customize_limit'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.customize_limit.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        
        $requestData = $request->all();
        
        customize_limit::create($requestData);

        return redirect('admin/customize_limit')->with('flash_message', 'customize_limit added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $customize_limit = customize_limit::findOrFail($id);

        return view('admin.customize_limit.show', compact('customize_limit'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $customize_limit = customize_limit::findOrFail($id);

        return view('admin.customize_limit.edit', compact('customize_limit'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        
        $requestData = $request->all();
        
        $customize_limit = customize_limit::findOrFail($id);
        $customize_limit->update($requestData);

        return redirect('admin/customize_limit')->with('flash_message', 'customize_limit updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        customize_limit::destroy($id);

        return redirect('admin/customize_limit')->with('flash_message', 'customize_limit deleted!');
    }
}
