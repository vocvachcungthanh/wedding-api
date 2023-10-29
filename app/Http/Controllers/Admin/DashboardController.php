<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Couple;
use App\Models\Album;
use App\Models\CountDown;
use App\Models\Event;
use App\Models\Guestkbook;
use App\Models\LoveStory;
use App\Models\Menu;
use App\Models\Music;
class DashboardController extends Controller
{
    public function index(){
        $totalSlider = Slider::count();
        $totalCouple = Couple::count();
        $totalAlbum = Album::count();
        $totalCountDown = CountDown::count();
        $totalEvent = Event::count();
        $totalGuestkbook = Guestkbook::count();
        $totalLoveStory= LoveStory::count();
        $totalMenu= Menu::count();
        $totallMusic= Music::count();

        return response()->json([
           "data" => [
            "sliders"      => $totalSlider,
            "couples"      => $totalCouple,
            "love-story"   => $totalLoveStory,
            "albums"       => $totalAlbum,
            "events"       => $totalEvent,
            "count-down"   => $totalCountDown,
            "music"        => $totallMusic,
            "guestkbook"   => $totalGuestkbook,
            "menus"         => $totalMenu,
           ]
        ]);

    }
}
