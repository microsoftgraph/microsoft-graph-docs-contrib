---
title: "Search Custom types"
description: "The query API lets you search accross Custom types ingested via the indexing API."
author: "nmoreau"
localization_priority: Normal
ms.prod: "search"
---

# Search custom types (externalItem)

The indexing API (preview) lets you import external data into Microsoft Search. The ingested content is surfaced in some Microsoft Search experiences. The search API lets you run search queries on this external content.

To search for custom types, specify the following in the [query](/graph/api/search-query?view=graph-rest-beta) method request body:

- The **contentSources** property to include the connection ID which is assigned during the connector setup

- The **entityType** property as `externalItem`

- The **stored_fields** property to include the fields in the external item you want to retrieve 

## Example

### Request  

```HTTP
POST https://graph.microsoft.com/beta/search/query
Content-Type: application/json
```

```json
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

- Custom types don’t support searching across multiple sources (specified in **contentSources**). You can only search one '''connectionId at the time.

- You must specify the **stored_fields** property, otherwise search results are not returned.

## Next steps

Find out more about:

- [Use the search API](/graph/api/resources/search-api-overview?view=graph-rest-beta)