---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-app-management ios-managed-app-protections assignments patch --ios-managed-app-protection-id {iosManagedAppProtection-id} --targeted-managed-app-policy-assignment-id {targetedManagedAppPolicyAssignment-id} --body '{\
  "@odata.type": "#microsoft.graph.targetedManagedAppPolicyAssignment",\
  "target": {\
    "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
    "collectionId": "Collection Id value"\
  }\
}\
'

```