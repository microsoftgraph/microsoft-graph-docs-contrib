---
title: "Search Calendar Events"
description: "You are able to search in user’s own calendar."
author: "knightsu"
localization_priority: Normal
ms.prod: "search"
---

# Search calendar events

You can search in a user’s own primary calendar.

## Example

### Request

```HTTP
POST https://graph.microsoft.com/search/query
Content-Type: application/json
```

### Response

```json
{
  "requests": [
    {
       "entityTypes": ["microsoft.graph.event"],
       "query": {
        "query_string": {
          "query": "contoso"
        }
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

## Known limitations

- You can only access user’s own calendar. Shared or delegated access is not supported.

## Next steps

Find out more about:

- [Use the search API](/graph/api/resources/search-api-overview?view=graph-rest-beta)