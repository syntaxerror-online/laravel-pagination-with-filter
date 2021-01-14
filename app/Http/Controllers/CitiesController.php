<?php

namespace App\Http\Controllers;

use App\Models\Cites;
use Illuminate\Http\Request;

class CitiesController extends Controller
{
    private $resources = [];

    public function index(Request $request){
        try{
            $data = $request->all();
            $cities = Cites::select('*');

            //Filter
            $name = $request->input('name');
            if(!is_null($name) && $name != ''){
                $cities = $cities->where('name','LIKE','%'.trim($name).'%');
            }

            $cities = $cities->orderBy('id','asc');
            $cities = $cities->paginate(10);

            $this->resources['data'] = $data;
            $this->resources['cities'] = $cities;
            return view('cities.list',$this->resources);
        }catch (\Exception $e){
            dd($e->getMessage());
        }
    }
}
