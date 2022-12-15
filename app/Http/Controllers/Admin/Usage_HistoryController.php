<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Models\Usage_History;
use Illuminate\Http\Request;

class Usage_HistoryController extends Controller
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
            $usage_history = Usage_History::where('nama', 'LIKE', "%$keyword%")
                ->orWhere('date', 'LIKE', "%$keyword%")
                ->orWhere('time', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $usage_history = Usage_History::latest()->paginate($perPage);
        }

        return view('admin.usage_-history.index', compact('usage_history'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('admin.usage_-history.create');
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
        
        Usage_History::create($requestData);

        return redirect('admin/usage_-history')->with('flash_message', 'Usage_History added!');
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
        $usage_history = Usage_History::findOrFail($id);

        return view('admin.usage_-history.show', compact('usage_history'));
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
        $usage_history = Usage_History::findOrFail($id);

        return view('admin.usage_-history.edit', compact('usage_history'));
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
        
        $usage_history = Usage_History::findOrFail($id);
        $usage_history->update($requestData);

        return redirect('admin/usage_-history')->with('flash_message', 'Usage_History updated!');
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
        Usage_History::destroy($id);

        return redirect('admin/usage_-history')->with('flash_message', 'Usage_History deleted!');
    }
}
