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
