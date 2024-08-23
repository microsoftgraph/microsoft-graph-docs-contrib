---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc external connections schema patch --external-connection-id {externalConnection-id} --body '{\
  "baseType": "microsoft.graph.externalItem",\
  "properties": [\
    {\
      "name": "ticketTitle",\
      "type": "String",\
      "isSearchable": "true",\
      "isRetrievable": "true",\
      "labels": [\
        "title"\
      ]\
    },\
    {\
      "name": "priority",\
      "type": "String",\
      "isQueryable": "true",\
      "isRetrievable": "true",\
      "isSearchable": "false"\
    },\
    {\
      "name": "assignee",\
      "type": "String",\
      "isRetrievable": "true"\
    }\
  ]\
}\
'

```