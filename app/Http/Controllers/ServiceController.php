<?php

namespace App\Http\Controllers;

class ServiceController extends Controller {

    public function showDescriptionSpa (){
        $serviceTable = \DB::table('service');
        $result= $serviceTable->select('name', 'description', 'price')->get();
        return $result;
    }

    public function showServiceHours (){
        $result = \DB::table('service_time')
        ->join('service', 'service.idservice','service_time.service')
        ->select('name', 'start_time', 'end_time')
        ->get();
        return $result;

    }

    
    
    public function createReserva($cliente, $service) {
        
        dd($cliente, $service);

    }
}