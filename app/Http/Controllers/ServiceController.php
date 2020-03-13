<?php

namespace App\Http\Controllers;

class ServiceController extends Controller {

    public function showDescriptionSpa (){
        $serviceTable = \DB::table('service');
        $result= $serviceTable->select('name', 'description', 'price')->get();
        dd($result);
    }
}