---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users mail-folders patch --user-id {user-id} --mail-folder-id {mailFolder-id} --body '{\
  "@odata.type": "microsoft.graph.mailSearchFolder",\
  "filterQuery": "contains(subject, 'Analytics')"\
}\
'

```