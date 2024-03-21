---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users mail-folders child-folders create --user-id {user-id} --mail-folder-id {mailFolder-id} --body '{\
  "@odata.type": "microsoft.graph.mailSearchFolder",\
  "displayName": "Weekly digests",\
  "includeNestedFolders": true,\
  "sourceFolderIds": ["AQMkADYAAAIBDAAAAA=="],\
  "filterQuery": "contains(subject, 'weekly digest')"\
}\
'

```