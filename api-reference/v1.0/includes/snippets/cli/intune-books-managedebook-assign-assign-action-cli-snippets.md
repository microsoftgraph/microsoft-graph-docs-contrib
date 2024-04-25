---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc device-app-management managed-ebooks assign post --managed-ebook-id {managedEBook-id} --body '{\
  "managedEBookAssignments": [\
    {\
      "@odata.type": "#microsoft.graph.managedEBookAssignment",\
      "id": "ae8b0d27-0d27-ae8b-270d-8bae270d8bae",\
      "target": {\
        "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget"\
      },\
      "installIntent": "required"\
    }\
  ]\
}\
'

```