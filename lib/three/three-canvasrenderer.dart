@JS("THREE")
library three_canvasrenderer;

import "package:js/js.dart";
import "three-core.dart"
    show MaterialParameters, Color, Material, Renderer, Scene, Camera;
import "package:func/func.dart";
import "dart:html" show CanvasRenderingContext2D, CanvasElement;

@anonymous
@JS()
abstract class SpriteCanvasMaterialParameters implements MaterialParameters {
  external num get color;
  external set color(num v);
  external VoidFunc2<CanvasRenderingContext2D, Color> get program;
  external set program(VoidFunc2<CanvasRenderingContext2D, Color> v);
  external factory SpriteCanvasMaterialParameters(
      {num color,
      VoidFunc2<CanvasRenderingContext2D, Color> program,
      String name,
      num /*enum Side*/ side,
      num opacity,
      bool transparent,
      num /*enum Blending*/ blending,
      num /*enum BlendingSrcFactor|enum BlendingDstFactor*/ blendSrc,
      num /*enum BlendingDstFactor*/ blendDst,
      num /*enum BlendingEquation*/ blendEquation,
      num blendSrcAlpha,
      num blendDstAlpha,
      num blendEquationAlpha,
      num /*enum DepthModes*/ depthFunc,
      bool depthTest,
      bool depthWrite,
      bool colorWrite,
      num precision,
      bool polygonOffset,
      num polygonOffsetFactor,
      num polygonOffsetUnits,
      num alphaTest,
      bool premultipliedAlpha,
      num overdraw,
      bool visible,
      bool fog,
      bool lights,
      num /*enum Shading*/ shading,
      num /*enum Colors*/ vertexColors});
}

@JS()
class SpriteCanvasMaterial extends Material {
  // @Ignore
  SpriteCanvasMaterial.fakeConstructor$() : super.fakeConstructor$();
  external factory SpriteCanvasMaterial(
      [SpriteCanvasMaterialParameters parameters]);
  external Color get color;
  external set color(Color v);
  external void program(CanvasRenderingContext2D context, Color color);
}

@anonymous
@JS()
abstract class CanvasRendererParameters {
  external CanvasElement get canvas;
  external set canvas(CanvasElement v);
  external num get devicePixelRatio;
  external set devicePixelRatio(num v);
  external bool get alpha;
  external set alpha(bool v);
  external factory CanvasRendererParameters(
      {CanvasElement canvas, num devicePixelRatio, bool alpha});
}

@JS()
class CanvasRenderer implements Renderer {
  // @Ignore
  CanvasRenderer.fakeConstructor$();
  external factory CanvasRenderer([CanvasRendererParameters parameters]);
  external CanvasElement get domElement;
  external set domElement(CanvasElement v);
  external bool get autoClear;
  external set autoClear(bool v);
  external bool get sortObjects;
  external set sortObjects(bool v);
  external bool get sortElements;
  external set sortElements(bool v);
  external dynamic /*{render: {vertices: number; faces: number;};}*/ get info;
  external set info(
      dynamic /*{render: {vertices: number; faces: number;};}*/ v);
  external void supportsVertexTextures();
  external void setFaceCulling();
  external num getPixelRatio();
  external void setPixelRatio(num value);
  external void setSize(num width, num height, [bool updateStyle]);
  external void setViewport(num x, num y, num width, num height);
  external void setScissor();
  external void enableScissorTest();
  external void setClearColor(dynamic /*Color|String|num*/ color,
      [num opacity]);

  /// setClearColor(color: string, opacity?: number): void;
  /// setClearColor(color: number, opacity?: number): void;
  external void setClearColorHex(num hex, [num alpha]);
  external Color getClearColor();
  external num getClearAlpha();
  external num getMaxAnisotropy();
  external void clear();
  external void clearColor();
  external void clearDepth();
  external void clearStencil();
  external void render(Scene scene, Camera camera);
}
