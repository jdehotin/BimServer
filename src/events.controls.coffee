# Eventful code comes here
# Program state should not be manipulated outside events files

controlsToggleTreeOpen = (event) ->
  ($ event.target).toggleClass 'controls-tree-open'

controlsToggleTreeSelected = (event) ->
  ($ event.target).toggleClass 'controls-tree-selected'

controlsToggleLayer = (event) ->
  elements = ($ '#layers input:checked').toArray()
  tags = (((($ el).attr 'id').split /^layer\-/)[1] for el in elements)
  state.scene.set 'tagMask', '(' + (tags.join '|') + ')'