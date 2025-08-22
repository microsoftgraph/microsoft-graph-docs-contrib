---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta users create --body '{\
    "displayName": "Test User",\
    "identities": [\
        {\
            "signInType": "emailAddress",\
            "issuer": "contoso.onmicrosoft.com",\
            "issuerAssignedId": "adelev@adatum.com"\
        }\
    ],\
    "mail": "adelev@adatum.com",\
    "passwordProfile": {\
        "password": "passwordValue",\
        "forceChangePasswordNextSignIn": true\
    },\
    "passwordPolicies": "DisablePasswordExpiration"\
}\
'

```