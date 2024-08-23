---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc users create --body '{\
  "displayName": "John Smith",\
  "identities": [\
    {\
      "signInType": "userName",\
      "issuer": "contoso.com",\
      "issuerAssignedId": "johnsmith"\
    },\
    {\
      "signInType": "emailAddress",\
      "issuer": "contoso.com",\
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