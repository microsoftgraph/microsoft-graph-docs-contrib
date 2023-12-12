---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta search query post --body '{\
  "requests": [\
    {\
      "entityTypes": [\
        "externalItem"\
      ],\
      "contentSources": [\
        "/external/connections/connectionfriendlyname"\
      ],\
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