---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc search query post --body '{\
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