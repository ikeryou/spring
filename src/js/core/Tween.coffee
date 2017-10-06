
class Tween

  constructor: ->


  # ------------------------------------
  # TweenMaxアニメーション設定
  # ------------------------------------
  a: (target, param, duration, delay, easing, onStart, onUpdate, onComplete) =>

    TweenMax.killTweensOf(target)

    from = {}
    to = {}

    for key,val of param
      if val[0]?
        from[key] = val[0]
        to[key]   = val[1]
      else
        to[key] = val

    TweenMax.set(target, from)

    if easing?
      to.ease = easing
    else
      to.ease = Power0.easeNone

    if delay?
      to.delay = delay

    if onStart?
      to.onStart = onStart
    if onUpdate?
      to.onUpdate = onUpdate
    if onComplete?
      to.onComplete = onComplete

    return TweenMax.to(target, duration, to)



  # ------------------------------------
  # TweenMaxパラメータ設定
  # ------------------------------------
  set: (target, to) =>

    TweenMax.set(target, to)











module.exports = new Tween()
