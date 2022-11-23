import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class ArObjectPage extends StatefulWidget {
  @override
  static const String id = 'ArObject_screen';
  State<ArObjectPage> createState() => _ArObjectPageState();
}

class _ArObjectPageState extends State<ArObjectPage> {
  late ArCoreController arCoreController;

  _onArCoreViewCreated(ArCoreController _arCoreController) {
    arCoreController = _arCoreController;
    _addSphere(arCoreController);
    // _addSphere(arCoreController);
    _addSphere2(arCoreController);
    //_addCube(arCoreController);
  }

  void _addSphere(ArCoreController _arCoreController) {
    final material = ArCoreMaterial(color: Color(0xFF960808));
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(1, 0, 0),
    );
    _arCoreController.addArCoreNode(node);
  }

  void _addSphere2(ArCoreController _arCoreController) {
    final material = ArCoreMaterial(color: Color(0xFF960808));
    final sphere = ArCoreSphere(materials: [material], radius: 0.2);
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(1.5, 0.5, -0.5),
    );
    _arCoreController.addArCoreNode(node);
  }

  void _addCube(ArCoreController _arCoreController) {
    final material = ArCoreMaterial(color: Color(0xFF54E8BF));
    final sphere =
        ArCoreCube(materials: [material], size: vector.Vector3(0.5, 0.5, 0.5));
    final node = ArCoreNode(
      shape: sphere,
      position: vector.Vector3(0, 0, -1.5),
    );
    _arCoreController.addArCoreNode(node);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    arCoreController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //0xFFFFF7F7
      //0xFFFFF3F3
      backgroundColor: Color(0xFFFFF7F7),
      appBar: AppBar(
        title: Text('Campus AR Navigation'),
        backgroundColor: Color(0xFF800000),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }
}
