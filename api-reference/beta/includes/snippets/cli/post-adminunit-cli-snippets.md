---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta external industry-data outbound-provisioning-flow-sets provisioning-flows create --outbound-provisioning-flow-set-id {outboundProvisioningFlowSet-id} --body '{\
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",\
  "creationOptions":\
  {\
    "createBasedOnOrg": true,\
    "createBasedOnOrgPlusroleGroup": true\
  }\
}\
'

```