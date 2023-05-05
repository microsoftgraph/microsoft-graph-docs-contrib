---
title: "Get educationModule"
description: "Get the properties and relationships of a module."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Get educationModule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [module](../resources/educationModule.md). Only teachers, students, and applications with application permissions can perform this operation.

Students can only see publiched modules; teachers and applications with application permissions can see all modules in a class.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TBD |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | TBD |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/modules/{id}
```

## Optional query parameters
This method supports the  `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [educationModule](../resources/educationModule.md) object in the response body.

## Example
### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request", 
  "sampleKeys":["1e40c4aa-98b0-400a-8570-161e8dcfa631","777c289e-d0d4-4912-88d2-21812ae87b9a"],
  "name": "get_educationModule"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/1e40c4aa-98b0-400a-8570-161e8dcfa631/modules/777c289e-d0d4-4912-88d2-21812ae87b9a
```

### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 279

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('1e40c4aa-98b0-400a-8570-161e8dcfa631')/modules/$entity",
    "displayName": "2023-05-05T22_28_20_564Z",
    "description": "Description for 2023-05-05T22_28_20_564Z",
    "resourcesFolderUrl": "https://graph.microsoft.com/beta/drives/b!UmWjcTCfj0iEQfUkbqAaIUQ4l046NrNIq092DJz8KtPOTRxV3HTtQrKm3fTayp_a/items/01OMTFXGZGET2DQOYFIBE36NWSXBGOC3SX",
    "isPinned": false,
    "status": "published",
    "createdDateTime": "2023-05-04T22:28:20.2048002Z",
    "lastModifiedDateTime": "2023-05-04T22:36:27.0739528Z",
    "id": "777c289e-d0d4-4912-88d2-21812ae87b9a",
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "cb1a4af3-0aba-4679-aa12-9f99bab0b61a",
            "displayName": null
        }
    }
}
```
