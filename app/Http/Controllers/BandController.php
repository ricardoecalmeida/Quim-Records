<?php

namespace App\Http\Controllers;

use App\Models\Band;
use App\Models\Album;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class BandController extends Controller
{

    public function allBands()
    {
        $bands = $this->getBands();

        $bands = Band::orderBy('name')->get();

        foreach ($bands as $band) {
            $band->nAlbums = Album::where('band_id', $band->id)->count();
        }

        return view('bands.all_bands', compact('bands'));
    }


    // Função para adicionar banda
    public function addBand()
    {
        $bands = DB::table('bands')
            ->get();

        return view('bands.add_band', compact('bands'));
    }

    public function createBand(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:50',
        ]);

        $photo = null;

        if ($request->has('photo')) {
            $photo = Storage::putFile('bandphotos/', $request->photo);
        }

        Band::insert([
            'name' => $request->name,
            'photo' => $photo,
        ]);

        return redirect()->route('bands.all')->with('message', 'Added!');
    }

    public function updateBand(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:50',
        ]);

        $photo = null;

        if ($request->has('photo')) {
            $photo = Storage::putFile('bandphotos/', $request->photo);
        }

        Band::where('id', $request->id)
            ->update([
                'name' => $request->name,
                'photo' => $photo,
            ]);

        return redirect()->route('bands.all')->with('message', 'Updated');
    }

    public function viewBand($id)
    {
        $myBand = DB::table('bands')
            ->where('id', $id)
            ->select('bands.*')
            ->first();

        return view('bands.view', compact('myBand'));
    }


    public function deleteBand($id)
    {
        DB::table('bands')
            ->where('id', ($id))
            ->delete();

        return back();
    }

    // Esta função acessória a simular uma base de dados só pode ser acedida neste controller (private)
    private function getBands()
    {
        $bands = DB::table('bands')
            ->get();
        return $bands;
    }
}
