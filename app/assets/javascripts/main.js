$(document).ready(function(){

	if( $('.noticia').text() != '' )
	{
		$('.noticia').removeClass('hidden');
		$('.noticia').bind('click', function() {

			$('.noticia').addClass('hidden');

		} )
	}

	if( $('.alerta').text() != '' )
	{
		$('.alerta').removeClass('hidden');
		$('.alerta').bind('click', function() {

			$('.alerta').addClass('hidden');

		} )
	}

});
