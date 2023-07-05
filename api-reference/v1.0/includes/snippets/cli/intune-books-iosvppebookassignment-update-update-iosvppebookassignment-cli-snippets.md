---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-app-management managed-ebooks assignments patch --managed-ebook-id {managedEBook-id} --managed-ebook-assignment-id {managedEBookAssignment-id} --body '{\
  "@odata.type": "#microsoft.graph.iosVppEBookAssignment",\
  "target": {\
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"\
  },\
  "installIntent": "required"\
}\
'

```