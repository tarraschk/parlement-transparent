ParlementTransparent.Views.Parlementaires ||= {}

class ParlementTransparent.Views.Parlementaires.IndexView extends Backbone.View
  template: JST["backbone/templates/parlementaires/index"]

  initialize: () ->
    @collection.bind('reset', @addAll)

  addAll: () =>
    @collection.each(@addOne)

  addOne: (parlementaire) =>
    view = new ParlementTransparent.Views.Parlementaires.ParlementaireView({model : parlementaire})
    @$("#parlementaires-wrapper").append(view.render().el)

  render: =>
    @$el.html(@template(parlementaires: @collection.toJSON() ))
    @addAll()

    return this
