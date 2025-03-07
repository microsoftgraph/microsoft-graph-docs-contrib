---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta policies authentication-methods-policy authentication-method-configurations patch --authentication-method-configuration-id {authenticationMethodConfiguration-id} --body '{\
    "@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",\
    "state": "enabled",\
    "isAttestationEnforced": "true"\
}\
'

```