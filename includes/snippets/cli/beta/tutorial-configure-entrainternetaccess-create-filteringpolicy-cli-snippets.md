---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta network-access filtering-policies create --body '{\
  "name": "AI and Bing",\
  "policyRules": [\
    {\
      "@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",\
      "name": "AI",\
      "ruleType": "webCategory",\
      "destinations": [\
        {\
          "@odata.type": "#microsoft.graph.networkaccess.webCategory",\
          "name": "ArtificialIntelligence"\
        }\
      ]\
    },\
    {\
      "@odata.type": "#microsoft.graph.networkaccess.fqdnFilteringRule",\
      "name": "bing FQDNs",\
      "ruleType": "fqdn",\
      "destinations": [\
        {\
          "@odata.type": "#microsoft.graph.networkaccess.fqdn",\
          "value": "bing.com"\
        },\
        {\
          "@odata.type": "#microsoft.graph.networkaccess.fqdn",\
          "value": "*.bing.com"\
        }\
      ]\
    }\
  ],\
  "action": "block"\
}\
'

```