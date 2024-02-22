---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies cross-tenant-access-policy partners patch --cross-tenant-access-policy-configuration-partner-tenant-id {crossTenantAccessPolicyConfigurationPartner-tenantId} --body '{\
"tenantRestrictions": {\
       "usersAndGroups": {\
            "accessType": "allowed",\
            "targets": [\
                {\
                    "target": "AllUsers",\
                    "targetType": "user"\
                }\
            ]\
        },\
        "applications": {\
            "accessType": "allowed",\
            "targets": [\
                {\
                    "target": "Office365",\
                    "targetType": "application"\
                }\
            ]\
        }\
    }\
}\
'

```