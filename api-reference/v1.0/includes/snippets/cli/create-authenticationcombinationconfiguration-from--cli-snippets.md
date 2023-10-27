---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity conditional-access authentication-strength policies combination-configurations create --authentication-strength-policy-id {authenticationStrengthPolicy-id} --body '{\
  "@odata.type" : "#microsoft.graph.fido2CombinationConfiguration",\
  "allowedAAGUIDs": [\
    "486c3b50-889c-480a-abc5-c04ef7c873e0",\
    "c042882f-a621-40c8-94d3-9cde3a826fed",\
    "ec454c08-4c77-4012-9d48-45f7f0fccdfb"\
  ],\
  "appliesToCombinations": ["fido2"]\
}\
'

```