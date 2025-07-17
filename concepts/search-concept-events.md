---
title: "Use the Microsoft Search API to search Outlook calendar events"
description: "Use the Microsoft Search API in Microsoft Graph to search for events in the signed-in user’s primary calendar. The user identity is based on the auth token."
author: "knightsu"
ms.localizationpriority: medium
ms.subservice: "search"
ms.date: 11/07/2024
---

# Use the Microsoft Search API to search Outlook calendar events

Use the Microsoft Search API in Microsoft Graph to search for events in the signed-in user’s primary calendar. The user identity for the search is based on the auth token.

[!INCLUDE [search-schema-updated](../includes/search-schema-updated.md)]

## Example

### Request

This example searches in the user's calendar for the keyword "contoso", and returns up to 25 results.

```HTTP
POST https://graph.microsoft.com/v1.0/search/query
Content-Type: application/json

{
  "requests": [
    {
      "entityTypes": [
        "event"
      ],
      "query": {
        "queryString":"contoso"
      },
      "from": 0,
      "size": 25
    }
  ]
}
```

### Response

```HTTP
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#search",
  "value": [
  {
   "@odata.type": "#microsoft.graph.searchResponse",
   "searchTerms": [
    "contoso"
   ],
   "hitsContainers": [
    {
     "@odata.type": "#microsoft.graph.searchHitsContainer",
     "hits": [
      {
       "@odata.type": "#microsoft.graph.searchHit",
       "hitId": "AAMkADEwODY2NzllLTQ3MmEtNGRlMC05ZTUyLTE4ZDRhYmU1ZGM3NABGAAAAAAA3+iYQBnJnQabRVDelNhnzBwAejhWkAOAxQ6M4c1c9NwfrAAAAAAENAAAejhWkAOAxQ6M4c1c9NwfrAABbUZLJAAA=",
       "rank": 1,
       "summary": "Here is a summary of your events from last week",
       "resource": {
        "@odata.type": "#microsoft.graph.event",
        "end": {
         "dateTime": "2020-06-16T04:15:00Z",
         "timeZone": "UTC"
        },
        "hasAttachments": false,
        "iCalUId": "040000008200E00074C5B7101A82E008000000007093FDD79B3AD60100000000000000001000000036DAA2262EB4E04DA27DA77985FB8251",
        "isAllDay": false,
        "sensitivity": "Normal",
        "start": {
         "dateTime": "2020-06-16T03:30:00Z",
         "timeZone": "UTC"
        },
        "subject": "Weekly digest: Microsoft 365 changes",
        "type": "Single"
       }
      }
     ],
     "total": 1,
     "moreResultsAvailable": false
    }
   ]
  }
 ]
}
```

## Known limitations

- You can access only the signed-in user’s own mailbox. Searching delegated mailboxes is not supported.
- For events, the **total** property of the [searchHitsContainer](/graph/api/resources/searchhitscontainer) type contains the number of results on the page, not the total number of matching results.
- Sorting results is not supported for events. A sort clause in the request returns a Bad Request error code in the response.

## Next steps

- [Use the Microsoft Search API to query data](/graph/api/resources/search-api-overview)
