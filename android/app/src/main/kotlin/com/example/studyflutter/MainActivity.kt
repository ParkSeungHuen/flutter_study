package com.example.studyflutter

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "example.com/value"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) { // 플러터와 연결 기본코드
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            if (call.method == "getValue") {
                result.success("sucess")

//                result.error(IllegalAccessError) // 에러처리도 가능함~
            }else {
                result.notImplemented()
            }

        }
    }
}
