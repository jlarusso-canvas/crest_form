class SelectManager
  constructor: (@config) ->
    @$container = $('#products-select')
    @_fetchProducts()


  _fetchProducts: ->
    $.get '/products/endpoint', (data) =>
      @_buildTags(data)


  _buildTags: (data) ->
    options =
      tokenSeparators: [","]

    @$container.select2(options)
    @$container.select2('val', data)

$ ->
  select_manager = new SelectManager
