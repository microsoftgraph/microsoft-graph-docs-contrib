---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc policies cross-tenant-access-policy partners patch --cross-tenant-access-policy-configuration-partner-tenant-id {crossTenantAccessPolicyConfigurationPartner-tenantId} --body '{\
  "inboundTrust": {\
    "isMfaAccepted": true,\
    "isCompliantDeviceAccepted": true,\
    "isHybridAzureADJoinedDeviceAccepted": true\
  }\
}\
'

```