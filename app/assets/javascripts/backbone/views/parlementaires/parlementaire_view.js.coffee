ParlementTransparent.Views.Parlementaires ||= {}

class ParlementTransparent.Views.Parlementaires.ParlementaireView extends Backbone.View
  template: JST["backbone/templates/parlementaires/parlementaire"]

  events:
    "click .destroy" : "destroy"

  tagName: "div"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
