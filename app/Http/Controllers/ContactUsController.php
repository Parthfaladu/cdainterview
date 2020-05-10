<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactUs;
use App\Http\Controllers\HomeController;
use Mail;
use App\Mail\ContactUsMail;

class ContactUsController extends Controller
{    
    /**
     * contact us page view
     *
     * @return void
     */
    public function view()
    {
        $contactus = ContactUs::first();
        return view("contact-us",compact('contactus'));
    }
    
    /**
     * backend contatct us page view
     *
     * @return void
     */
    public function adminView()
    {
        $contactus = ContactUs::first();
        return view("backend.contact-us",compact('contactus'));
    }
    
    /**
     * contat us form mail
     *
     * @param  mixed $request
     * @return void
     */
    public function contactUsMail(Request $request)
    {
        $contactUs = ContactUs::first();
        
        Mail::to($contactUs->contact_us_email)
            ->send(new ContactUsMail($request->get('name'), $request->get('email'), $request->get('message')));

        flash('Your enquiry successfully submitted.', 'success')->important();
        return redirect()->back();
    }
    
    /**
     * store contact us page details
     *
     * @param  mixed $request
     * @return void
     */
    public function storeContactUsPageContent(Request $request)
    {
        $contactUs = ContactUs::first();
        $contactUs->content          = $request->get("content");
        $contactUs->note             = $request->get("note");
        $contactUs->no_index         = $request->get("no_index") ? $request->get("no_index") : 0;
        $contactUs->title            = $request->get("title");
        $contactUs->meta_description = $request->get("meta_description");
        $contactUs->contact_us_email = $request->get("contact_us_email");

        $homeController = new HomeController;
        $contactUs = $homeController->uploadImage($contactUs, $request->file('contact_us_image'), 'contact_us_image_path');
        
        $contactUs->update();

        flash('Details successfully updated.', 'success')->important();
        return redirect()->back();
    }
}
