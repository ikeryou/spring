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
    @_motionD()
    @_motionE()
    @_motionF()
    @_motionG()



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
    }, @_duration, 1, Elastic.easeOut.config(1, 1), null, null, @_motionB)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionC: =>

    Tween.a($('.motionC'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.9), null, null, @_motionC)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionD: =>

    Tween.a($('.motionD'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.8), null, null, @_motionD)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionE: =>

    Tween.a($('.motionE'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.75), null, null, @_motionE)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionF: =>

    Tween.a($('.motionF'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.7), null, null, @_motionF)



  # -----------------------------------------------
  #
  # -----------------------------------------------
  _motionG: =>

    Tween.a($('.motionG'), {
      x:[0, window.innerWidth * @_dist]
    }, @_duration, 1, Elastic.easeOut.config(1, 0.6), null, null, @_motionG)




module.exports = Top

main = new Top()
main.init()
