if exist "%USERPROFILE%\OWASP ZAP\.ZAP_JVM.properties" (
	set /p jvmopts=< "%USERPROFILE%\OWASP ZAP\.ZAP_JVM.properties"
) else (
	set jvmopts=-Xmx512m
)

java %jvmopts% -jar zap-D-2017-12-04.jar %*
