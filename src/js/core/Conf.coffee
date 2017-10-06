
class Conf

  constructor: ->

    # 本番フラグ
    @RELEASE = false

    # フラグ関連
    @FLG = {
      PARAM:location.href.indexOf('p=1') > 0
      STATS:false
    };

    # 本番フラグがtrueの場合、フラグ関連は全てfalseに
    if @RELEASE
      for key,val of @FLG
        @FLG[key] = false

    # ブレイクポイント
    @BREAKPOINT = 768

    # パス
    @PATH_IMG = '/assets/image/'






module.exports = new Conf()
