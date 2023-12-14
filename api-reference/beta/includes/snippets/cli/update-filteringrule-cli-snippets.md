---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta network-access filtering-policies policy-rules patch --filtering-policy-id {filteringPolicy-id} --policy-rule-id {policyRule-id} --body '{\
  "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",\
  "name": "Gambling and Storage cateogries",\
  "destinations": [\
    {\
      "@odata.type": "#microsoft.graph.networkaccess.webCategory",\
      "name": "Gambling"\
    },\
    {\
      "@odata.type": "#microsoft.graph.networkaccess.webCategory",\
      "name": "WebRepositoryAndStorage"\
    }\
  ]\
}\
'

```