<?php

namespace App\Http\Controllers;

use App\Jobs\ProcessPodcast;
use Illuminate\Http\Request;

class PodcastControlelr extends Controller
{
    public function index()
    {
        dispatch(new ProcessPodcast());

        return ['status'=>'ok'];
    }
}
