<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Home;

class HomeController extends Controller
{    
    /**
     * home page view
     *
     * @return void
     */
    public function view()
    {
        $home = Home::first();
        return view("home",compact('home'));
    }
    
    /**
     * backend home page view
     *
     * @return void
     */
    public function adminView()
    {
        $home = Home::first();
        return view("backend.home",compact('home'));
    }
    
    /**
     * store home page details
     *
     * @param  mixed $request
     * @return void
     */
    public function storeHomePageContent(Request $request)
    {
        $home = Home::first();
        $home->content          = $request->get("content");
        $home->no_index         = $request->get("no_index") ? $request->get("no_index") : 0;
        $home->title            = $request->get("title");
        $home->meta_description = $request->get("meta_description");
        $home = $this->uploadImage($home, $request->file('hero_section_image'), 'hero_section_image_path');
        $home->update();
        
        flash('Details successfully updated.', 'success')->important();
        return redirect()->back();
    }
    
    /**
     * upload image
     *
     * @param  mixed $data
     * @param  mixed $image
     * @param  mixed $image_path
     * @return void
     */
    public function uploadImage($data, $image, $image_path)
	{
		$imagePath   = '';

    	if($image && $image->isValid()) 
    	{
			$destinationPath = 'images/';
		    $extension = $image->getClientOriginalExtension(); 
            $imageName = str_random(32).'.'.$extension;

		   	if($image->move($destinationPath, $imageName)){
		        $imagePath = $destinationPath.$imageName;
		    }
		    $data[$image_path] = '/'.$imagePath;
		}
		return $data;
	}
}
