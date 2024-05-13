---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management virtual-endpoint provisioning-policies assign post --cloud-pc-provisioning-policy-id {cloudPcProvisioningPolicy-id} --body '{\
  "assignments": [\
    {\
      "target": {\
        "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",\
        "groupId": "64ff06de-9c00-4a5a-98b5-7f5abe26ffff"\
      }\
    }\
  ]\
}\
'

```