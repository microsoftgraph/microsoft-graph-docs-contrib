---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc search query post --body '{\
  "requests": [\
    {\
      "entityTypes": [\
        "listItem"\
      ],\
      "query": {\
        "queryString": "contoso",\
        "queryTemplate":"{searchTerms} CreatedBy:Bob"\
      },\
      "from": 0,\
      "size": 25\
    }\
  ]\
}\
'

```