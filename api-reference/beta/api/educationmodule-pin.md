---
title: "educationModule: pin"
description: "Pin an educationModule in the classwork list."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# educationModule: pin

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Updated the **isPinned** property to **true** for an [educationModule](../resources/educationmodule.md).

Only a teacher in the class can make this call, and only one **module** can be pinned in the classwork list.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  TBD  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | TBD |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/modules/{id}/pin

```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 Ok` response code and an [educationModule](../resources/educationmodule.md) object in the response body.

## Example
The following example shows how to call this API.

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "sampleKeys": ["1e40c4aa-98b0-400a-8570-161e8dcfa631","82781966-72d7-4bc3-8803-2530f1a382d7"],
  "name": "educationmodule_pin_1"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/1e40c4aa-98b0-400a-8570-161e8dcfa631/modules/82781966-72d7-4bc3-8803-2530f1a382d7/pin
```

### Response
The following is an example of a response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule"
} -->

```http
HTTP/1.1 200 Ok

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#educationModule",
    "@odata.type": "#microsoft.graph.educationModule",
    "displayName": "2023-05-05T23_09_02_734Z",
    "description": "Description for 2023-05-05T23_09_02_734Z",
    "resourcesFolderUrl": null,
    "isPinned": true,
    "status": "draft",
    "createdDateTime": "2023-05-04T23:09:02.1925818Z",
    "lastModifiedDateTime": "2023-05-04T23:09:54.7566354Z",
    "id": "82781966-72d7-4bc3-8803-2530f1a382d7",
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
