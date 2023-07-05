---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc policies authentication-strength-policies patch --authentication-strength-policy-id {authenticationStrengthPolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.authenticationStrengthPolicy",\
  "displayName": "FIDO2 only",\
  "description": "An auth strength allowing only FIDO2 security keys."\
}\
'

```