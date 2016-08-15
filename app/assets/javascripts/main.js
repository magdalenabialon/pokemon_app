
console.log('sdsdfs')

// index.html.erb

$(document).ready(function() {

  $('.js-like').on('click', function(event){
    var $pokemonDiv = $(event.target).closest('.each-Pokemon');
    var pokemonId = $pokemonDiv.data('id');
    var $likeCountSpan =  $pokemonDiv.find('.likes-count');

    $.ajax( {
      url: 'api/likes',
      data: {pokemon_id: pokemonId},
      method: 'post'
    } ).done(function(response){
      $likeCountSpan.html(response.like_count);
    })
  });
})



// // search.html.erb
// $(document).ready(function() {
//
//   $('#search-form').on('submit', function(event){
//     event.preventDefault();
//
//     var pokeName = $('#input-bx').val();
//     // console.log(title);
//     $.ajax({
//       url: "http://pokeapi.co/api/v2/pokemon/results[0]"+pokeName
//       // method: 'get'
//     }).done(function(pokemon){
//       console.log(pokemon);
//       $('#pokemon-info').html(pokemon.name)
//     });
//
//   });
// })
//
// $(document).ready(function() {
//   $.ajax({
//     url: "http://pokeapi.co/api/v2/pokemon/"
//     // method: 'get'
//   }).done(function(pokemon){
//     pokemon.results.forEach(function(e) {
//       $('#pokemon-fewEgz').append(e.name +' \n')
//     })
//
//   });
// })
