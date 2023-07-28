---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users mail-folders child-folders create --user-id {user-id} --mail-folder-id {mailFolder-id} --body '{\
  "@odata.type": "microsoft.graph.mailSearchFolder",\
  "displayName": "Weekly digests",\
  "includeNestedFolders": true,\
  "sourceFolderIds": ["AQMkADYAAAIBDAAAAA=="],\
  "filterQuery": "contains(subject, 'weekly digest')"\
}\
'

```