---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management targeted-managed-app-configurations assign post --targeted-managed-app-configuration-id {targetedManagedAppConfiguration-id} --body '{\
  "assignments": [\
    {\
      "@odata.type": "#microsoft.graph.targetedManagedAppPolicyAssignment",\
      "id": "8b68c4a6-c4a6-8b68-a6c4-688ba6c4688b",\
      "target": {\
        "@odata.type": "microsoft.graph.configurationManagerCollectionAssignmentTarget",\
        "collectionId": "Collection Id value"\
      }\
    }\
  ]\
}\
'

```