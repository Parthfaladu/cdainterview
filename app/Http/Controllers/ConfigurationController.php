<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Configuration;

class ConfigurationController extends Controller
{    
    /**
     * configuration page view
     *
     * @return void
     */
    public function view()
    {
        $config = Configuration::first();
        return view("backend.configuration", compact('config'));
    }

        
    /**
     * store configuration details
     *
     * @param  mixed $request
     * @return void
     */
    public function storeConfiguration(Request $request)
    {
        $configuration = Configuration::first();
        if($configuration == null){
            $configuration = new Configuration;
            
        }
        $configuration->facebook_pixel = $request->get('facebook_pixel');
        $configuration->google_analytics_tag = $request->get('google_analytics_tag');
        $configuration->save();

        flash('Details successfully updated.', 'success')->important();
        return redirect()->back();
    }
}
