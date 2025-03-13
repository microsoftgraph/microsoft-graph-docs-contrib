---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta print shares patch --printer-share-id {printerShare-id} --body '{\
  "displayName": "ShareName",\
  "allowAllUsers": true,\
  "printer@odata.bind": "https://graph.microsoft.com/beta/print/printers/{id}"\
}\
'

```