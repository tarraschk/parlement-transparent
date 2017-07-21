class ParlementTransparent.Routers.ParlementairesRouter extends Backbone.Router
  initialize: (options) ->
    @parlementaires = new ParlementTransparent.Collections.ParlementairesCollection()
    @parlementaires.reset options.parlementaires

  routes:
    #"new"      : "newParlementaire"
    "index"    : "index"
    #":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  #newParlementaire: ->
  #  @view = new ParlementTransparent.Views.Parlementaires.NewView(collection: @parlementaires)
  #  $("#parlementaires").html(@view.render().el)

  index: ->
    @view = new ParlementTransparent.Views.Parlementaires.IndexView(collection: @parlementaires)
    $("#parlementaires").html(@view.render().el)

  show: (id) ->
    parlementaire = @parlementaires.get(id)

    @view = new ParlementTransparent.Views.Parlementaires.ShowView(model: parlementaire)
    $("#parlementaires").html(@view.render().el)

  #edit: (id) ->
  #  parlementaire = @parlementaires.get(id)
  #
  #  @view = new ParlementTransparent.Views.Parlementaires.EditView(model: parlementaire)
  #  $("#parlementaires").html(@view.render().el)
