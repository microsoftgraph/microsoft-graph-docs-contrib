---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc search query post --body '{\
  "requests": [\
    {\
      "entityTypes": [\
        "externalItem"\
      ],\
      "contentSources": [\
        "/external/connections/connectionfriendlyname"\
      ],\
       "region": "US",\
       "query": {\
        "queryString": "contoso product"\
      },\
      "from": 0,\
      "size": 25,\
      "fields": [\
        "title",\
        "description"\
      ]\
    }\
  ]\
}\
'

```