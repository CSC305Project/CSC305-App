import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'transaction_card_model.dart';
export 'transaction_card_model.dart';

class TransactionCardWidget extends StatefulWidget {
  const TransactionCardWidget({super.key});

  @override
  State<TransactionCardWidget> createState() => _TransactionCardWidgetState();
}

class _TransactionCardWidgetState extends State<TransactionCardWidget> {
  late TransactionCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
