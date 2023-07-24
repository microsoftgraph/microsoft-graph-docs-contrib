---
title: "Delete educationModuleResource"
description: "Delete a specific resource attached to an module."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# Delete educationModuleResource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a specific [educationModuleResource](../resources/educationmoduleresource.md) attached to an module. Only teachers in the class can remove a resource.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduCurricula.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | EduCurricula.ReadWrite.All | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /education/classes/{class-id}/modules/{module-id}/resources/{resource-id}

```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Don't supply a request body for this method.


## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Example
### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "delete_educationmoduleresource"
}-->
```http
DELETE https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/modules/dc1af5c4-8211-4e5d-92e6-f006477c2740/resources/7a686854-6d85-4fc0-9729-e36af26f7deb
```

### Response
The following is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```
