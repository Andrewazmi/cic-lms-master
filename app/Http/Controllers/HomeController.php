<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Payment;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index()
    {
        $courses = Payment::where('user_id', auth()->user()->id)->get();
        $myCourses = array();
        foreach ($courses as $course) {
            $myCourses[] = $course->course_id;
        }
        $coursesList = Course::whereIn('id', $myCourses)->get();
        // return $coursesList;
        return view('home', compact('coursesList'));
    }
}
