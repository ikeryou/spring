Util   = require('../libs/Util')
Resize = require('../libs/Resize')
Size   = require('../libs/obj/Size')
Type   = require('./Type')
Conf   = require('./Conf')

# 共通関数
class Func

  constructor: ->



  # ------------------------------------
  # レティナのあの値
  # ------------------------------------
  ratio: =>

    return window.devicePixelRatio || 1



  # ------------------------------------
  # スクリーンタイプ取得
  # ------------------------------------
  screen: =>

    if Resize.sw() <= Conf.BREAKPOINT
      return Type.SCREEN.XS
    else
      return Type.SCREEN.LG



  # ------------------------------------
  # スクリーンタイプ XS
  # ------------------------------------
  isXS: =>

    return (@screen() == Type.SCREEN.XS)



  # ------------------------------------
  # スクリーンタイプ LG
  # ------------------------------------
  isLG: =>

    return (@screen() == Type.SCREEN.LG)



  # ------------------------------------
  # スクリーンタイプで分岐
  # ------------------------------------
  val: (xs, lg) =>

    if @isXS()
      return xs
    else
      return lg



  # ------------------------------------
  # コクのあるサイン 1
  # ------------------------------------
  sin1: (radian) =>

    return Math.sin(radian) + Math.sin(2 * radian)



  # ------------------------------------
  # コクのあるサイン 2
  # ------------------------------------
  sin2: (radian) =>

    return (
      Math.sin(radian) +
      Math.sin(2.2 * radian + 5.52) +
      Math.sin(2.9 * radian + 0.93) +
      Math.sin(4.6 * radian + 8.94)
    ) / 4



  # ------------------------------------
  # 画面全体の操作ON/OFF
  # 引数なしの場合、状態が boolean で返る
  # ------------------------------------
  clickable: (bool) =>

    c = 'noPointer'
    body = $('body')

    if !bool?
      return !body.hasClass(c)
    else
      if bool
        body.removeClass(c)
      else
        body.addClass(c)








module.exports = new Func()
