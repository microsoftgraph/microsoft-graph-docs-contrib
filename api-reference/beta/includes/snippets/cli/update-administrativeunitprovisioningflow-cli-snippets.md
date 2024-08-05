---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta external industry-data outbound-provisioning-flow-sets provisioning-flows patch --outbound-provisioning-flow-set-id {outboundProvisioningFlowSet-id} --provisioning-flow-id {provisioningFlow-id} --body '{\
  "@odata.type": "#microsoft.graph.industryData.administrativeUnitProvisioningFlow",\
  "creationOptions":\
  {\
    "createBasedOnOrg": true,\
    "createBasedOnOrgPlusroleGroup": false\
  }\
}\
'

```