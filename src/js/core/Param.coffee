dat    = require('dat-gui')
Conf   = require('./Conf')
Func   = require('./Func')
Update = require('../libs/Update')


# ---------------------------------------------------
# パラメータ
# ---------------------------------------------------
class Param

  constructor: ->

    @_gui

    @item = {
      offset:{value:0, min:-100, max:100}
    }

    


    @_init()



  # -----------------------------------------------
  # 初期化
  # -----------------------------------------------
  _init: =>

    Update.add(@_update)

    if !Conf.FLG.PARAM
      return

    @_gui = new dat.GUI()
    # @_addGui(@mask, 'mask')
    # @_addGui(@shadow, 'shadow')
    @_addGui(@hover, 'hover')

    $('.dg').css('zIndex', 99999999)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _addGui: (obj, folderName) =>

    folder = @_gui.addFolder(folderName)

    for key,val of obj
      if !val.use?
        if key.indexOf('Color') > 0
          folder.addColor(val, 'value').name(key)
        else
          if val.list?
            folder.add(val, 'value', val.list).name(key)
          else
            folder.add(val, 'value', val.min, val.max).name(key)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _listen: (param, name) =>

    if !name? then name = param
    @_gui.add(@, param).name(name).listen()



  # -----------------------------------
  # 更新
  # -----------------------------------
  _update: =>








module.exports = new Param()
