// SchedulerBinding.instance.addPostFrameCallback((_) {
//               Navigator.of(context).pushNamed('/details');
//           });

// WidgetsBinding.instance.addPostFrameCallback((_) {
//   Navigator.push(context,
//       MaterialPageRoute(builder: (context) => HomePage()));
// });



// Search


  // List<SongModel> _songs = [];
  // String _searchQuery = '';

  // /// Search .mp3 file
  // void _searchAudioFiles(String query) {
  //   setState(() {
  //     _searchQuery = query;
  //   });
  // }

  // /// show Search song
  // List<SongModel> _getFilteredSongs() {
  //   if (_searchQuery.isEmpty) {
  //     return _songs;
  //   } else {
  //     return _songs
  //         .where((song) =>
  //             song.title.toLowerCase().contains(_searchQuery.toLowerCase()))
  //         .toList();
  //   }
  // }

  //  use

  //   @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: TextField(
  //         onChanged: _searchAudioFiles,
  //         decoration: const InputDecoration(
  //           hintText: 'Search...',
  //           border: InputBorder.none,
  //         ),
  //       ),
  //     ),
  //     body: ListView.builder(
  //       itemCount: _getFilteredSongs().length,
  //       itemBuilder: (context, index) {
  //         SongModel song = _getFilteredSongs()[index];
  //         return ListTile(
  //           title: Text(song.title),
  //           subtitle: Text(song.artist.toString()),
  //           onTap: () {
  //             Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (context) => MusicPlayerPage(
  //                         playlist: _songs, currentIndex: index)));
  //           },
  //         );
  //       },
  //     ),
  //   );
  // }