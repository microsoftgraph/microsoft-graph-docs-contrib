---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta applications patch --application-id {application-id} --body '{\
    "onPremisesPublishing": {\
        "externalAuthenticationType": "aadPreAuthentication",\
        "internalUrl": "https://contosoiwaapp.com",\
        "externalUrl": "https://contosoiwaapp-contoso.msappproxy.net",\
        "isHttpOnlyCookieEnabled": true,\
        "isOnPremPublishingEnabled": true,\
        "isPersistentCookieEnabled": true,\
        "isSecureCookieEnabled": true,\
        "isStateSessionEnabled": true,\
        "isTranslateHostHeaderEnabled": true,\
        "isTranslateLinksInBodyEnabled": true\
    }\
}\
'

```