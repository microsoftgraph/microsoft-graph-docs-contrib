---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
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