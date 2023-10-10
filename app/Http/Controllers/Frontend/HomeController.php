<?php

namespace App\Http\Controllers\Frontend;
use Illuminate\Support\Facades\Mail;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Mail\ContactMail;
use App\Models\Activity;
use App\Models\Testemonial;
use App\Models\User;
use App\Models\Visitor;
use App\Models\Equipe;
use App\Models\Evenement;
use Throwable;

class HomeController extends Controller
{
               
    public function index(){

        $visitors = Visitor::select('visit_time', DB::raw('count(*) as total'))->where('visit_time', '>', today()->subMonth())->groupBy('visit_time')->get();
        // $profileId = $request->input('profile_id');
        $activities = Activity::count();
        $members=User::count();
        $evenements=Evenement::count();
        $testemonials = Testemonial::all();
        $equipes = Equipe::all();
        
        return view('frontend.index', compact('testemonials', 'equipes','members','evenements','activities','visitors'));
    }


    public function contact(){
        return view('frontend.contact');
    }
 
   
   
}
