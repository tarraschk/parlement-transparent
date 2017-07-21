class ParlementTransparent.Models.Parlementaire extends Backbone.Model
  paramRoot: 'parlementaire'

  defaults:
    type: null
    message: ''
    messages_templates: [
      ".‪@ accepteriez-vs qu'une institution externe contrôle les comptes du Parlement?",
      "‪.@ accepteriez-vs qu'une institution externe contrôle vos dépenses de mandat?",
      ".@ pensez-vs que les parlementaires doivent justifier leur usage de l'argent public?",
      ".@ êtes-vs favorable à un contrôle de vos dépenses par la Cour des Comptes?",
      ".@ vous engagez-vous à être transparent sur vos dépenses au Parlement?",
      ".@ êtes-vous pour un contrôle externe des dépenses de l'AN et du Sénat?"
    ]
    displayed_circo: ''

  initialize: ->
    msg_tmp = this.get('messages_templates')
    alea = Math.floor(Math.random() * msg_tmp.length);
    this.set('message', encodeURI(msg_tmp[alea].replace("@", "@"+this.get('twitter'))))
    this.set('displayed_circo', this.displayed_circo())

  displayed_circo: ->
    res = this.get('nom_circo')
    if this.get('num_deptmt') != 999
      res += ' ('+this.get('num_deptmt')+')'
    return res

class ParlementTransparent.Collections.ParlementairesCollection extends Backbone.Collection
  model: ParlementTransparent.Models.Parlementaire
  url: '/parlementaires'
