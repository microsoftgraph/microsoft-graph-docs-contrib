---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity conditional-access policies create --body '{\
  "displayName": "Policy for risky sign-in block access",\
  "state": "enabled",\
  "conditions": {\
    "signInRiskLevels": [\
      "high",\
      "medium"\
    ],\
    "applications": {\
      "includeApplications": ["All"]\
    },\
    "users": {\
      "includeUsers": [\
        "4628e7df-dff3-407c-a08f-75f08c0806dc"\
      ]\
    }\
  },\
  "grantControls": {\
    "operator": "OR",\
    "builtInControls": [\
      "block"\
    ]\
  }\
}\
'

```