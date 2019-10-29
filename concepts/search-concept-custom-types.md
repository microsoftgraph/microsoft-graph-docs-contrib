---
title: "Search Custom types"
description: "The query API lets you search accross Custom types ingested via the indexing API."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Search custom types (ExternalItem)

Connectors (Beta) let you import external data into Microsoft Search. Ingested content will be surfaced in some Microsoft Search experiences. The search API lets you run search queries on this ingested content.

## Search custom types

To search for custom types you will need to provide :

- The Connectionid which has been assigned during the Connector setup

- Specify the entityType as externalItem

- Specify the fields you want to retrieve in the Stored_field property

Request  

```HTTP
POST /search/query
Content-Type: application/json
Authorization: Bearer AAD_TOKEN
```

```Json
{
  "requests": [
    {
       "entityTypes": ["microsoft.graph.externalItem"],
       "contentSources": ["/external/connections/jirabugs"],
       "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25,
    "stored_fields": [
        "title",
        "priority",
        "description"
       ]
    }
  ]
}
```

<!--
Response
-TODO nmoreau team Include one example of externalItem response. 
```Json
{
  
}

```
-->

## Known limitations

- Custom Types don’t support searching across multiple contentSources. You can only search one ConnectionId at the time.

- Stored_fields have to be specified, otherwise search results won’t be returned.

## Next steps

Find out more about:

- The [search API](/graph/api/search-query?view=graph-rest-beta)