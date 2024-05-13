---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
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