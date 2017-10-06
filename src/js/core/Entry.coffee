window.$                     = require('jquery')
window.requestAnimationFrame = require('raf')
window.THREE                 = require('three')
window.TweenMax              = require('TweenMax')
window.CustomEase            = require('CustomEase')
window.TimelineMax           = require('TimelineMax')
window.isMobile              = require('ismobilejs')

Param    = require('./Param')
Profiler = require('./Profiler')
Func     = require('./Func')
Delay    = require('../libs/Delay')
Util     = require('../libs/Util')


# エントリーポイント
class Entry

  constructor: ->

    @isJp = (window.navigator.userLanguage || window.navigator.language || window.navigator.browserLanguage).substr(0,2) == 'ja'


  # ------------------------------------
  # 初期化
  # ------------------------------------
  init: =>

    if Util.isIE2()
      $('body').addClass('ie')

    if isMobile.any
      $('body').addClass('sp')
    else
      $('body').addClass('pc')

    $('a:not([href])').attr('href', 'javascript:void(0)')

    $('.js-svgLoad').each((i,e) =>
      el = $(e)
      el.load(el.attr('data-svg'))
    )

    if location.href.indexOf('grid=yes') > 0
      $('.l-grid').removeClass('none')











module.exports = Entry
