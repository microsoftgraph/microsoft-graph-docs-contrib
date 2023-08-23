---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies authentication-strength-policies create --body '{\
  "@odata.type" : "#microsoft.graph.authenticationStrengthPolicy",\
  "displayName": "Contoso authentication level",\
  "description": "The only authentication level allowed to access our secret apps",\
  "allowedCombinations": [\
      "password, hardwareOath",\
      "password, sms"\
  ]\
}\
'

```