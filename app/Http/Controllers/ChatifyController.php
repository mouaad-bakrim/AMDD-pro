<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class ChatifyController extends Controller
{
    public function renderChatifyView(Request $request)
    {
        $users = User::all(); // Fetch all users
        return view('vendor.Chatify.pages.app', compact('users'));
    }
}

