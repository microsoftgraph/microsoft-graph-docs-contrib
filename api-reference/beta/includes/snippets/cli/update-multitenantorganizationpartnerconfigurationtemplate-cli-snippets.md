---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies cross-tenant-access-policy templates multi-tenant-organization-partner-configuration patch --body '{\
    "inboundTrust":  {\
        "isMfaAccepted": true,\
        "isCompliantDeviceAccepted": true,\
        "isHybridAzureADJoinedDeviceAccepted": true\
    },\
    "automaticUserConsentSettings": {\
        "inboundAllowed": true,\
        "outboundAllowed": true\
    },\
    "templateApplicationLevel": "newPartners,existingPartners"\
}\
\
'

```