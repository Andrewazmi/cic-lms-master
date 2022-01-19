<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Course;
use App\Models\Payment;
use App\Models\Material;

class CoursesController extends Controller
{
    public function category(Request $request, Category $category)
    {
        $category = Category::find($category)->first();
        $courses = Course::where('category_id', $category->id)->get();
        return view('category', compact('category', 'courses'));
    }

    public function course(Request $request, Course $course)
    {
        $course = Course::find($course)->first();
        if (auth()->user() === null) {
            $payLink = '#';
        }else{
            $payLink = auth()->user()->charge($course->price, $course->name, ['return_url'=> route('create-product', 'course='.$course->id)]);
        }
        $payment = Payment::where('user_id', auth()->user()->id)->where('course_id', $course->id)->count();
        return view('course', compact('course', 'payLink', 'payment'));
    }

    public function createProduct(Request $request, Payment $paid)
    {
        $payment = Payment::create([
            'user_id' => auth()->user()->id,
            'course_id' => $request['course'],
        ]);
        return redirect()->intended(url()->previous());
    }

    public function materials(Request $request, Course $course)
    {
        $materials = Material::where('course', $course->id)->get();
        return view('materials', compact('course','materials'));
    }

    public function material(Request $request, Course $course, Material $material)
    {
        $material = Material::where('id', $material->id)->first();
        $previous = Material::where('id', '<', $material->id)->max('id');
        $next = Material::where('id', '>', $material->id)->min('id');
        return view('showmaterial', compact('course','material','next', 'previous'));
    }
}
