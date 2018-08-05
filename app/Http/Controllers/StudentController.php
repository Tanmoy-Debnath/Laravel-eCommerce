<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index() {
      $name = 'I am an engineer';
      $age = '25';
      return view('home', [
        'name'=> $name,
        'age' => $age
      ]);
    }
    public function add() {
      return view('about');

}
}
