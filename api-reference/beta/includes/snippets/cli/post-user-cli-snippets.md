---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta external industry-data outbound-provisioning-flow-sets provisioning-flows create --outbound-provisioning-flow-set-id {outboundProvisioningFlowSet-id} --body '{\
    "@odata.type": "#microsoft.graph.industryData.userProvisioningFlow",\
    "createUnmatchedUsers": true,\
    "managementOptions":\
    {\
        "additionalAttributes": ["userGradeLevel"],\
        "additionalOptions":\
        {\
            "markAllStudentsAsMinors": true,\
            "allowStudentContactAssociation"  : false\
        }\
    },\
    "creationOptions":\
    {\
        "configurations": [\
          {\
            "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff",\
            "defaultPasswordSettings":\
            {\
              "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",\
              "password": "********"\
            },\
            "licenseSkus": [ "Sku1"]\
          },\
          {\
            "roleGroup@odata.bind": "https://graph.microsoft.com/beta/external/industryData/roleGroups/students",\
            "defaultPasswordSettings":\
            {\
              "@odata.type": "#microsoft.graph.industryData.simplePasswordSettings",\
              "password": "********"\
            },\
            "licenseSkus": [ "Sku2"]\
          }\
        ]\
    }\
}\
'

```