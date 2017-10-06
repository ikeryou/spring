Entry    = require('../core/Entry')
Profiler = require('../core/Profiler')
Func     = require('../core/Func')
Tween    = require('../core/Tween')
Update   = require('../libs/Update')


class Top extends Entry


  constructor: ->

    super()

    @_dist = 0.5
    @_duration = 1




  # -----------------------------------------------
  # 初期化
  # -----------------------------------------------
  init: =>

    super()

    @_motionA()
    @_motionB()
    @_motionC()



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionA: =>

    Tween.a($('.motionA'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut, null, null, @_motionA)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionB: =>

    Tween.a($('.motionB'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.75), null, null, @_motionB)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionC: =>

    Tween.a($('.motionC'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.5), null, null, @_motionC)




module.exports = Top

main = new Top()
main.init()
