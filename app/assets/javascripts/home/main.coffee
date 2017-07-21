searchCallback = (content) ->
  if content.query != $('#q').val()
  # do not take out-dated answers into account
    return
  if content.hits.length == 0
  # no results
    $('#parlementaires-wrapper').empty()
    return
  # Scan all hits and display them
  $('#parlementaires-wrapper').empty()
  window.router.view.collection.reset(content.hits)
  return

initCallback = (content) ->
  window.parlementaires_data = content.hits
  console.log ("Fetched!")
  window.router = new ParlementTransparent.Routers.ParlementairesRouter({parlementaires: window.parlementaires_data})
  console.log ("Starting Backbone...")
  Backbone.history.start()
  console.log ("Done!")
  return

$ ->
  window.parlementaires_data = {}
  console.log("App ready.")
  client = $.algolia.Client('ALGOLIA_APP_ID', 'ALGOLIA_API_KEY')
  index = client.initIndex('Parlementaire')
  $inputfield = $('#q')


  $inputfield.keyup(->
    index.search($inputfield.val()).done(searchCallback).fail (content) ->
      console.log 'Error', content
      return
    return
  ).focus().closest('form').on 'submit', ->
    # on form submit, store the query string in the anchor
    #location.replace '#q=' + encodeURIComponent($inputfield.val())
    return false
  # check if there is a query in the anchor: http://example.org/#q=my+query
  if location.hash and location.hash.indexOf('#q=') == 0
    q = decodeURIComponent(location.hash.substring(3))
    $inputfield.val(q).trigger 'keyup'
  else
    index.search('', hitsPerPage: 1000).done(initCallback).fail (content) ->
      console.log 'Error', content
      return