---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users create --body '{\
  "displayName": "John Smith",\
  "identities": [\
    {\
      "signInType": "userName",\
      "issuer": "contoso.onmicrosoft.com",\
      "issuerAssignedId": "johnsmith"\
    },\
    {\
      "signInType": "emailAddress",\
      "issuer": "contoso.onmicrosoft.com",\
      "issuerAssignedId": "jsmith@yahoo.com"\
    },\
    {\
      "signInType": "federated",\
      "issuer": "facebook.com",\
      "issuerAssignedId": "5eecb0cd"\
    }\
  ],\
  "passwordProfile" : {\
    "password": "password-value",\
    "forceChangePasswordNextSignIn": false\
  },\
  "passwordPolicies": "DisablePasswordExpiration"\
}\
'

```