---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users mail-folders patch --user-id {user-id} --mail-folder-id {mailFolder-id} --body '{\
  "@odata.type": "microsoft.graph.mailSearchFolder",\
  "filterQuery": "contains(subject, 'Analytics')"\
}\
'

```