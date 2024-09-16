<?php

namespace App\Http\Controllers;

use App\Models\Album;
use App\Models\Band;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class AlbumController extends Controller
{

    public function allAlbums()
    {
        $albums = $this->getAlbums();

        $albums = Album::orderBy('title')->with('band')->get();

        return view('albums.all_albums', compact('albums'));
    }

    private function getAlbums()
    {
        $albums = DB::table('albums')
            ->join('bands', 'band_id', '=', 'bands.id')
            ->select('albums.*', 'bands.name as bandname')
            ->get();
        return $albums;
    }

    public function viewAlbum($id)
    {
        $album = DB::table('albums')
            ->where('albums.id', $id)
            ->join('bands', 'band_id', '=', 'bands.id')
            ->select('albums.*', 'bands.name as bandname')
            ->first();

        $bands = DB::table('bands')
            ->get();

        return view('albums.view', compact('album', 'bands'));
    }


    public function addAlbum()
    {
        $bands = DB::table('bands')
            ->get();

        return view('albums.add_album', compact('bands'));
    }

    // CREATE: Função chamada na view add_album (method: post) - Cria a entrada na base de dados
    public function createAlbum(Request $request)
    {

        //dd($request->all());

        $request->validate([
            'title' => 'required|string|max:50',
            'release' => 'required|date',
            'band_id' => 'required|integer|exists:bands,id'
        ]);

        $cover = null;

        if ($request->has('cover')) {
            $cover = Storage::putFile('covers/', $request->cover);
        }

        Album::insert([
            'title' => $request->title,
            'cover' => $cover,
            'release' => $request->release,
            'band_id' => $request->band_id
        ]);

        return redirect()->route('albums.all')->with('message', 'Album added.');
    }

    // UPDATE: Formulário (view.blade) tem esta função como action (method: post)
    public function updateAlbum(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:50',
            'release' => 'required|date',
            'band_id' => 'required|integer|exists:bands,id'
        ]);

        $cover = null;

        if ($request->has('cover')) {
            $cover = Storage::putFile('covers/', $request->cover);
        }

        Album::where('id', $request->id)
            ->update([
                'title' => $request->title, // Esquerda nome na coluna SQL || Direita nome da variável
                'release' => $request->release,
                'cover' => $cover
            ]);
        //dd($request->all());

        return redirect()->route('albums.all')->with('message', 'Updated');
    }

    // DELETE: Função chamada pelo botão de Eliminar na view all_albums
    public function deleteAlbum($id)
    {
        Db::table('albums')
            ->where('id', ($id))
            ->delete();
        return back();
    }

    // Função para filtrar os álbuns de determinada banda
    public function albumsByBand($band_id)
    {
        $band = Band::findOrFail($band_id);
        $albums = $band->albums;
        return view('albums.byband', compact('albums', 'band'));
    }
}
