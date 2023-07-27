---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc print shares patch --printer-share-id {printerShare-id} --body '{\
  "displayName": "PrinterShare Name",\
  "printer@odata.bind": "https://graph.microsoft.com/v1.0/print/printers/{printerId}",\
  "allowAllUsers": false\
}\
'

```