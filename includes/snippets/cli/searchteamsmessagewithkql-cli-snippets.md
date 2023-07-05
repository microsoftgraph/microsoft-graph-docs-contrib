---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc search query post --body '{\
  "requests": [\
    {\
      "entityTypes": [\
        "chatMessage"\
      ],\
      "query": {\
        "queryString": "contoso from:bob to:alice sent>2022-07-14"\
      },\
      "from": 0,\
      "size": 15,\
      "enableTopResults": true\
    }\
  ]\
}\
'

```