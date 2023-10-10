---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta compliance ediscovery cases noncustodial-data-sources create --case-id {case-id} --body '{\
    "applyHoldToSource": false,\
    "dataSource": {\
        "@odata.type": "microsoft.graph.ediscovery.siteSource",\
        "site": {\
            "webUrl": "https://contoso.sharepoint.com/sites/SecretSite"\
        }\
    }\
}\
'

```