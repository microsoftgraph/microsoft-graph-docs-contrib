---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta device-management virtual-endpoint provisioning-policies patch --cloud-pc-provisioning-policy-id {cloudPcProvisioningPolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicy",\
  "displayName": "HR provisioning policy",\
  "description": "Provisioning policy for India HR employees",\
  "onPremisesConnectionId": "4e47d0f6-6f77-44f0-8893-c0fe1701ffff",\
  "imageId": "Image ID value",\
  "imageDisplayName": "Image Display Name value",\
  "imageType": "custom",\
  "windowsSettings": {\
    "language": "en-US"\
  }\
}\
'

```