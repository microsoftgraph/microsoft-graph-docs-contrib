---
title: "educationModule: reorder"
description: "Reorder an educationModule to a target position in the classwork list."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.prod: "education"
doc_type: apiPageType
---

# educationModule: reorder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reorder an [educationModule](../resources/educationmodule.md) to a target position in the classwork list.

Only a teacher in the class can make this call.

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
POST /education/classes/{classId}/modules/{moduleId}/reorder

```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
In the request body, supply the `targetParentEntityId` as `null`, and the `newPredecessor` property for this method. 

The new predecessor will contain a module id, and the current module will be moved after that position. 

The current module will be located at the beginning of the classwork list when the `newPredecessor` is set to `null`.

## Response
If successful, this method returns a `200 Ok` response code and a list of [educationModule](../resources/educationmodule.md) objects following the new order in the response body.

## Example
The following example shows how to call this API.

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "educationmodule_reorder_1"
}-->

```http
POST https://graph.microsoft.com/beta/education/classes/1e40c4aa-98b0-400a-8570-161e8dcfa631/modules/777c289e-d0d4-4912-88d2-21812ae87b9a/reorder
```

### Response
The following is an example of a response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationModule",
  "isColletion": true
} -->

```http
HTTP/1.1 200 Ok

{}
```
