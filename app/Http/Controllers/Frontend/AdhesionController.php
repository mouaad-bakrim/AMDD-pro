<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use App\Models\Adhesion;
use App\Models\User;
use App\Models\Comite;
use App\Models\Profile;
use App\Models\Formation;
use App\Models\Formulaire;
use App\Models\Specialite;
class AdhesionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
    }

    public function showAdhesionForm()
    {
        $comites = Comite::all();
        $profiles = Profile::where('id', '!=', 1)->get();
        $formation = Formation::all();
        return view('frontend.adhesion', [
            'comites' =>$comites,
            'profiles' =>$profiles,
            'formation' =>$formation
        ]);
    }
    public function getSpecialiteByComiteID($id){
        $specialite = Specialite::where('comite_id', $id)->get();
        return $specialite;
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function create(Request $request)
    {
          //create a user
          $nom = $request->input('nom');
          $prenom = $request->input('prenom'); 
          $sexe = $request->input('sexe');
          $telephone = $request->input('telephone');
          $email= $request->input('email');
          $password = $request->input('password');
          $region = $request->input('region');
          $ville = $request->input('ville');
          $profile_id = $request->input('profile_id');
          $comite_id = $request->input('comite_id');
  
          $user = User::firstOrCreate([
              'email' => $email, 
          ], [
              'fname' => $nom,
              'lname' => $prenom,
              'gender' => $sexe,
              'phone' => $telephone,
              'email' => $email,
              'password' => $password,
              'region' => $region,
              'ville' => $ville,
              'comite_id' => $comite_id,
              'profile_id' => $profile_id,
              'status' => 'active',
              // other fields to be stored for the new user
          ]);
          $formulaire =  Formulaire::create([
            'type_form'=>$request->input('type'),
            'datas'=>json_encode($request->all())
                  ]);
          $user->save();
          $formulaire->save();
          $comites = Comite::all();
          $profiles = Profile::where('id', '!=', 1)->get();
          $formation = Formation::all();
          return redirect()->route('frontend.adhesion', [
              'comites' =>$comites,
              'profiles' =>$profiles,
              'formation' =>$formation
          ]);
        }
    

    
        public function store(Request $request)
        { 
               // $user = new User;
                // $user->fname = $request->input('name');
                // $user->email = $request->input('email');
                // $user->nom= $request->input('nom');
                // $user->prenom = $request->input('prenom');
                // $user->sexe = $request->input('sexe');
                // $user->telephone = $request->input('telephone');
                // $user->email = $request->input('email');
                // $user->ville = $request->input('ville');
                // $user->save();
            $validator = Validator::make($request->all(), [
                'email' => 'required|email',
                'fname' => 'required',
                'lname' => 'required',
                'gender' => 'required',
                'phone' => 'required',
                'password' => 'required',
                'status' => 'required',
            ]);
        
            if ($validator->fails()) {
                // Handle validation errors, such as redirecting back to the form with error messages
                return redirect()->back()->withErrors($validator)->withInput();
            }
        
            // Validation passed, proceed with inserting the record
            $user = User::create([
                'email' => $request->input('email'),
                'fname' => $request->input('nom'),
                'lname' => $request->input('prenom'),
                'gender' => $request->input('sexe'),
                'phone' => $request->input('phone'),
                'password' =>$request->input('password'),
                'status' => 'active',
                'updated_at' => now(),
                'created_at' => now(),
            ]);
        
            // Additional logic or response after successful insertion
        }
        // Set other user attributes
        
        // $comiteId = $request->input('comite');
        // if ($comiteId !== "") {
        //     $user->comite_id = $comiteId;
        // }
        
       

        // Redirect or return a response
    
     

        // Retrieve the user_id of the newly created user
        // $user_id = $user->id;

        // Determine the form type (e.g., stage, formation)
        // $formType = $request->input('type');

        // Retrieve the form-specific data based on the form type
        // $formSpecificData = $this->getFormSpecificData($formType, $request);

        // // Create a new Adhesion instance and associate it with the user_id and form-specific data
        // $adhesion = new Adhesion;
        // $adhesion->user_id = $user_id;
        // $adhesion->details = $formSpecificData;
        // $adhesion->type_adhesion = $formType;
        // // Set other adhesion fields as needed
        // $adhesion->save();

        // return response()->json([
        //     'adhesion_id' => $adhesion->id,
        // ]);
    

    // Helper method to get the form-specific data based on the form type
    private function getFormSpecificData($formType, $request)
    {   
        // Implement the logic to retrieve the form-specific data based on the form type
        // This can include conditionals or switch statements depending on your specific requirements

        $formSpecificData = [];

        switch ($formType) {
            case 'stage':
            
                $formSpecificData['type_stage'] = $request->input('type_stage');
                $formSpecificData['duree'] = $request->input('duree');
                break;
            case 'preinscription':
                $formSpecificData['profession'] = $request->input('profession');
                $formSpecificData['specialite'] = $request->input('specialite');
                break;
            case 'formation':
                    $formSpecificData['formation_options'] = $request->input('formation_options') ?? [];
                    $formSpecificData['custom_formation_option'] = $request->input('custom_formation_option') ?? '';
                    break;
            
            case 'avecPaiment':
                $formSpecificData['formationData'] = $request->input('formation_data');
                // Set other formation-specific data as needed
                break;    
            // Add more cases for other form types
            default:
                // Handle default case or throw an error if necessary
                break;
        }

        return json_encode($formSpecificData);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Implementation for showing the form for editing a specified resource
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
        // Implementation for updating a specified resource
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Implementation for removing a specified resource
    }
}
