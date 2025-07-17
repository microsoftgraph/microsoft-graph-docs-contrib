---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity custom-authentication-extensions create --body '{\
  "@odata.type": "#microsoft.graph.onOtpSendCustomExtension",\
  "authenticationConfiguration": {\
    "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",\
    "resourceId": "api://onotpsendcustomextension.b2c.expert/fb96de85-2abe-4b02-b45f-64ba122c509e"\
  },\
  "clientConfiguration": {\
    "timeoutInMilliseconds": 2000,\
    "maximumRetries": 1\
  },\
  "description": "Use an external Email provider to send OTP Codes.",\
  "displayName": "onEmailOtpSendCustomExtension",\
  "endpointConfiguration": {\
    "@odata.type": "#microsoft.graph.httpRequestEndpoint",\
    "targetUrl": "https://onotpsendcustomextension.b2c.expert/api/OnOTPCodeSendToTeamsDemo"\
  },\
  "behaviorOnError": {\
    "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"\
  }\
}\
'

```