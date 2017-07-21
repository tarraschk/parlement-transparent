ParlementTransparent.Views.Parlementaires ||= {}

class ParlementTransparent.Views.Parlementaires.ShowView extends Backbone.View
  template: JST["backbone/templates/parlementaires/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
