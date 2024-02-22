---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-management device-compliance-policies assign post --device-compliance-policy-id {deviceCompliancePolicy-id} --body '{\
  "assignments": [\
    {\
      "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",\
      "id": "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ]\
}\
'

```