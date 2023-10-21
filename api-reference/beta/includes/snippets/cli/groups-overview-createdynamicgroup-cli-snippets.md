---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups create --body '{\
    "description": "Marketing department folks",\
    "displayName": "Marketing department",\
    "groupTypes": [\
        "Unified",\
        "DynamicMembership"\
    ],\
    "mailEnabled": true,\
    "mailNickname": "marketing",\
    "securityEnabled": false,\
    "membershipRule": "user.department -eq \"Marketing\"",\
    "membershipRuleProcessingState": "on"\
}\
'

```