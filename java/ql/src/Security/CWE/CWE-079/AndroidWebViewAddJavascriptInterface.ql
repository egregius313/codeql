/**
 * @id java/android-webview-addjavascriptinterface
 * @description Exposing a Javascript interface to a Java object in a WebView can lead to malicious JavaScript controlling the application.
 * @kind problem
 * @problem.severity warning
 * @security-severity 6.1
 * @precision high
 * @tags security
 *       external/cwe/cwe-079
 */

import java
import semmle.code.java.frameworks.android.WebView

from MethodAccess ma
where ma.getMethod() instanceof WebViewAddJavascriptInterfaceMethod
select ma, "JavaScript interface to Java object added in Android WebView."
