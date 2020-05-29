---
title: "Get filesFolder"
description: "Retrieve the filesFolder of a channel."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get filesFolder

Namespace: microsoft.graph

Retrieve the filesFolder navigation path, which is the metadata for the location where the channel files are stored, for a [channel](../resources/channel.md). 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | File.Read.All, Group.Read.All, File.ReadWrite.All, Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | File.Read.All, Group.Read.All, File.ReadWrite.All, Group.ReadWrite.All     |


## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{id}/channels/{id}/filesFolder

```

## Optional query parameters

This method does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [driveItem](../resources/driveitem.md) object in the response body.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get filesFolder",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
