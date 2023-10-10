---
title: "Assign a connectorGroup to an application"
description: "Use this API to assign a connectorGroup to an application"
ms.localizationpriority: medium
author: "dhruvinrshah"
ms.prod: "applications"
doc_type: "apiPageType"
---
# Assign a connectorGroup to an application

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a [connectorGroup](../resources/connectorgroup.md) to an [application](../resources/application.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported.  |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /applications/{id}/connectorGroup/$ref

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer. Required.|
| Content-type | application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [connectorGroup](../resources/connectorgroup.md) object.

## Response

If successful, this method returns `204 No Content` response code.

## Example
### Request
The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_application_from_connectorgroup"
}-->
```http
PUT https://graph.microsoft.com/beta/applications/{id}/connectorGroup/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/onPremisesPublishingProfiles/applicationproxy/connectorGroups/{id}"
}
```

### Response
The following is an example of the response. 

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Assign a connectorGroup to an application",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->



