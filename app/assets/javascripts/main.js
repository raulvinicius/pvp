$(document).ready(function(){

	if( $('.noticia').text() != '' )
	{
		$('.noticia').removeClass('hidden');
		$('.noticia').bind('click', function() {

			$('.noticia').addClass('hidden');

		} )
	}

	if( $('.alerta-pvp').text() != '' )
	{
		$('.alerta-pvp').removeClass('hidden');
		$('.alerta-pvp').bind('click', function() {

			$('.alerta-pvp').addClass('hidden');

		} )
	}

});
