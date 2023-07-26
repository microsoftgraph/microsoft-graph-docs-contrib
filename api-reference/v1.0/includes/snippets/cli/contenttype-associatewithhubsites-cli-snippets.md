---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc sites content-types associate-with-hub-sites post --site-id {site-id} --content-type-id {contentType-id} --body '{\
   "hubSiteUrls":[\
      "https://graph.microsoft.com/v1.0/sites/{site-id}"\
   ],\
   "propagateToExistingLists":false\
}\
'

```