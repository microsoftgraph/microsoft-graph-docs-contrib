---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies authentication-methods-policy authentication-method-configurations patch --authentication-method-configuration-id {authenticationMethodConfiguration-id} --body '{\
  "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",\
  "includeTargets": [\
    {\
        "targetType": "group",\
        "id": "b183b746-e7db-4fa2-bafc-69ecf18850dd",\
        "isRegistrationRequired": false,\
    }\
  ],\
  "state": "enabled"\
}\
\
'

```