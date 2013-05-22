$(document).ready(function(){
	console.log('Your document is ready');
	$('.typeahead').typeahead({
		source: function(query, callback){
			$.getJSON('words.json', function(words){
				// [{english: "test", polish:"test", crap:"sfsdf"}]
				var suggestions = [];

				$.each(words, function(key, value){
					suggestions.push(value["english"]);
					suggestions.push(value["polish"]);
				});
				callback(suggestions);
			});
		}
	});
});