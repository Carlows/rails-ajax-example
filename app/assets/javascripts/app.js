(function($){
	$(document).ready(function(){
		$('.spinner').hide();

		$('#requestReports').click(function(){
			$('.reports').empty();
			$('.spinner').show();
			requestReportsData();
		});

		
	});

	function requestReportsData(){
		$.get('http://localhost:3000/reports').done(function(data){
			$('.spinner').hide();
			var template = $('#reportTemplate').html();
			Mustache.parse(template);
			var rendered = Mustache.render(template, data);

			$('.reports').html(rendered);
		});
	}
})(jQuery)