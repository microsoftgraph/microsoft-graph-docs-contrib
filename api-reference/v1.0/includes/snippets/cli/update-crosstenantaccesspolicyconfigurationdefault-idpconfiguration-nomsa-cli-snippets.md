---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc policies cross-tenant-access-policy default patch --body '{\
  "invitationRedemptionIdentityProviderConfiguration": { \
    "primaryIdentityProviderPrecedenceOrder": [ \
        "externalFederation", \
        "azureActiveDirectory", \
        "socialIdentityProviders" \
    ], \
    "fallbackIdentityProvider": "emailOneTimePasscode" \
  } \
}\
'

```