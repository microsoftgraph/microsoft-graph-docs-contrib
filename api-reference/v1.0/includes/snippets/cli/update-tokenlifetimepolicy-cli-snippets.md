---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc policies token-lifetime-policies patch --token-lifetime-policy-id {tokenLifetimePolicy-id} --body '{\
    "definition": [\
        "{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}"\
    ],\
    "displayName": "Contoso token lifetime policy",\
    "isOrganizationDefault": true\
}\
'

```