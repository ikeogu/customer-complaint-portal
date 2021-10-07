<?php

namespace App\Http\Controllers;

use App\Models\Complaint;
use App\Models\Customers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ComplaintController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $complaints = Complaint::latest()->paginate(10);
        return view('admin.complaints',['complaints'=>$complaints]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $this->validate($request, [
            'title' => ['required', 'string', 'max:255'],
            'message' => ['required', 'string'],

        ]);
        $x = new Complaint();
        $x->title = $request->title;
        $x->message = $request->message;
        $x->customers_id = auth()->user()->customers_id;
        $x->reviewed = 2;
        $customer = Customers::find($x->customers_id);
        $x->branch_id = $customer->branch_id;

       if($x->save()){
           return back()->with('success','Complaint Submitted wait for response.');
       }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Complaint  $complaint
     * @return \Illuminate\Http\Response
     */
    public function show(Complaint $complaint)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Complaint  $complaint
     * @return \Illuminate\Http\Response
     */
    public function edit(Complaint $complaint)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Complaint  $complaint
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,  $complaint)
    {
        //
        Complaint::whereId($complaint)->update($request->except('_token','_method'));
        return back()->with('success','Complaints Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Complaint  $complaint
     * @return \Illuminate\Http\Response
     */
    public function destroy(Complaint $complaint)
    {
        //
        $complaint->delete();
        return back()->with('success','Deleted');
    }

    public function review($id){
        $c = Complaint::find($id);
        $c->reviewed = 1;
        $c->save();
        return back()->with('success', 'Reviewed');
    }
}