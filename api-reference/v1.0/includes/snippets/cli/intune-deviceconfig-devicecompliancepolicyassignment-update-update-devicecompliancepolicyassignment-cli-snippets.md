---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-management device-compliance-policies assignments patch --device-compliance-policy-id {deviceCompliancePolicy-id} --device-compliance-policy-assignment-id {deviceCompliancePolicyAssignment-id} --body '{\
  "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",\
  "target": {\
    "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
    "collectionId": "Collection Id value"\
  }\
}\
'

```