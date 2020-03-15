<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\model\Reservation;

class ReservationController extends Controller
{
    //
    public function create(Request $request){
        $item= new Reservation;

        $item->idreserva= $request->idreserva;
        $item->custome_name= $request->custome_name;
        $item->comments= $request->comments;
        $item->day_of_service= $request->day_of_service;
        $item->service_time= $request->service_time;
        $item->service= $request->service;
        $item->total_price= $request->total_price;

        $item->save();

        if( $item->save()){
            return ['success'=>$item];
        }
        else {
            return ['success'=>'operation failed'];
        }
    }
}
