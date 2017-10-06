
class Capture extends THREE.Scene

  constructor: (tgNum) ->

    super()

    @_tgNum = tgNum || 1
    @_texture = []



  # -----------------------------------
  # 初期化
  # -----------------------------------
  init: =>

    i = 0
    while i < @_tgNum

      t = new THREE.WebGLRenderTarget(16, 16, {
        depthBuffer  :false
        stencilBuffer:false
      })
      @_texture.push(t)

      i++



  # -----------------------------------
  # テクスチャ
  # -----------------------------------
  texture: (key) =>

    if !key?
      key = 0

    return @_texture[key].texture



  # -----------------------------------
  # テクスチャにレンダリング
  # -----------------------------------
  render: (renderer, camera, key) =>

    if !key?
      key = 0

    t = @_texture[key]

    renderer.clearTarget(t, true)
    renderer.render(@, camera, t)



  # -----------------------------------
  # レンダリング先テクスチャのサイズ設定
  # -----------------------------------
  size: (width, height) =>

    ratio = window.devicePixelRatio || 1

    for val,i in @_texture
      val.setSize(width * ratio, height * ratio)





module.exports = Capture
