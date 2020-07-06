import 'package:flutter/material.dart';

import 'package:art/src/pages/page_firststep.dart';
import 'package:art/src/pages/page_login.dart';
import 'package:art/src/pages/page_dashboard.dart';
import 'package:art/src/pages/page_secondstep.dart';
import 'package:art/src/pages/page_sent.dart';
import 'package:art/src/pages/page_secondstep-b.dart';
import 'package:art/src/pages/page_thirdstep-b.dart';
import 'package:art/src/pages/page_thirdstep.dart';
import 'package:art/src/pages/page_waitingapproval.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
    'login'           : ( BuildContext context ) => LoginPage(),
    'dashboard'       : ( BuildContext context ) => DashboardPage(),
    'firststep'       : ( BuildContext context ) => FirstStepPage(),
    'secondstep'      : ( BuildContext context ) => SecondStepPage(),
    'secondstepB'     : ( BuildContext context ) => SecondStepBPage(),
    'thirdstep'       : ( BuildContext context ) => ThirdStepPage(),
    'thirdstepB'      : ( BuildContext context ) => ThirdStepBPage(),
    'sent'            : ( BuildContext context ) => SentPage(),
    'waitingapproval' : ( BuildContext context ) => WaitingApprovalPage(),

  };

}
