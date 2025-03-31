---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc device-management virtual-endpoint provisioning-policies patch --cloud-pc-provisioning-policy-id {cloudPcProvisioningPolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",\
  "displayName": "HR provisioning policy",\
  "description": "Provisioning policy for India HR employees",\
  "microsoftManagedDesktop": {\
    "managedType": "starterManaged",\
    "profile": null\
  },\
  "autopatch": {\
    "autopatchGroupId": "91197a0b-3a74-408d-ba88-bce3fdc4e5eb"\
  }\
}\
'

```