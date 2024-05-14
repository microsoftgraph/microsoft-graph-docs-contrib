---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta external industry-data outbound-provisioning-flow-sets provisioning-flows patch --outbound-provisioning-flow-set-id {outboundProvisioningFlowSet-id} --provisioning-flow-id {provisioningFlow-id} --body '{\
  "@odata.type": "#microsoft.graph.industryData.securityGroupProvisioningFlow",\
  "creationOptions":\
  {\
    "createBasedOnRoleGroup": true,\
    "createBasedOnOrgPlusRoleGroup": true\
  }\
}\
'

```