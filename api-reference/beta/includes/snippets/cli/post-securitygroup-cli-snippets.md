---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta external industry-data outbound-provisioning-flow-sets provisioning-flows create --outbound-provisioning-flow-set-id {outboundProvisioningFlowSet-id} --body '{\
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",\
  "creationOptions":\
  {\
    "createBasedOnroleGroup": true,\
    "createBasedOnOrgPlusroleGroup": false\
  }\
}\
'

```