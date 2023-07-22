<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;
use File;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $companies = Company::paginate(10);

        return view('companies', compact('companies'));

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('create-company');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'logo' => ['required', 'max:10000', 'image'],
            'name' => ['required', 'max: 255'],
            'email' => ['required', 'email', 'max:255']
        ]);

        $fileName = time().'_'.$request->logo->getClientOriginalName();
        $filePath = $request->logo->storeAs('uploads', $fileName);

        $company = new Company();
        $company->logo = 'storage/'.$filePath;
        $company->name = $request->name;
        $company->email = $request->email;
        $company->save();

        return redirect()->route('companies.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $company = Company::findorFail($id);
        return view('show-company', compact('company'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $company = Company::findOrFail($id);
        return view('edit-company', compact('company'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => ['required', 'max: 255'],
            'email' => ['required', 'email', 'max:255']
        ]);

        $company = Company::findOrFail($id);
        if($request->hasFile('logo')){
            $request->validate([
                'logo' => ['required', 'max:10000', 'image']
            ]);
            $fileName = time().'_'.$request->logo->getClientOriginalName();
            $filePath = $request->logo->storeAs('uploads', $fileName);

            File::delete(public_path($company->logo));

            $company->logo = 'storage/'.$filePath;
        }

        $company->name = $request->name;
        $company->email = $request->email;
        $company->save();

        return redirect()->route('companies.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $company = Company::findOrFail($id);
        $company->delete();

        return redirect()->route('companies.index');
    }

    public function trashed()
    {
        $companies = Company::onlyTrashed()->get();
        return view('trashed-companies', compact('companies'));
    }
    public function restore($id)
    {
        $company = Company::onlyTrashed()->findOrFail($id);
        $company->restore();
        return redirect()->back();
    }
    public function forceDelete($id)
    {
        $company = Company::onlyTrashed()->findOrFail($id);
        File::delete(public_path($company->logo));
        $company->forceDelete();
        return redirect()->back();
    }
}
