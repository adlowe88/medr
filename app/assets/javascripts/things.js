var onReady = function() {

  // initialize bloodhound engine
  var searchSelector = 'input.typeahead';

  var bloodhound = new Bloodhound({
    datumTokenizer: function (d) {
      return Bloodhound.tokenizers.whitespace(d.value);
    },
    queryTokenizer: Bloodhound.tokenizers.whitespace,

    // sends ajax request to remote url where %QUERY is user input
    remote: '/things/typeahead/%QUERY',
    limit: 50
  });
  bloodhound.initialize();

  // initialize typeahead widget and hook it up to bloodhound engine
  // #typeahead is just a text input
  $(searchSelector).typeahead(null, {
    displayKey: 'name',
    source: bloodhound.ttAdapter()
  });

  // this is the event that is fired when a user clicks on a suggestion
  $(searchSelector).bind('typeahead:selected', function(event, datum, name) {
    //console.debug('Suggestion clicked:', event, datum, name);
    window.location.href = '/things/' + datum.id;
  });
};
