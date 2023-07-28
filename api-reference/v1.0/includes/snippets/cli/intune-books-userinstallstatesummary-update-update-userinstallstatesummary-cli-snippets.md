---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc device-app-management managed-ebooks user-state-summary patch --managed-ebook-id {managedEBook-id} --user-install-state-summary-id {userInstallStateSummary-id} --body '{\
  "@odata.type": "#microsoft.graph.userInstallStateSummary",\
  "userName": "User Name value",\
  "installedDeviceCount": 4,\
  "failedDeviceCount": 1,\
  "notInstalledDeviceCount": 7\
}\
'

```