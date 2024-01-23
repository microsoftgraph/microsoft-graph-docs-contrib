---
title: "Create virtualEventTownhall"
description: "Create a new virtualEventTownhall object."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Create virtualEvent
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsroot-post-events-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-post-events-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/townhalls
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

You can specify the following properties when creating a **virtualEventTownhall**.

|Property|Type|Description|
|:---|:---|:---|
| displayName | String | Display name of the townhall. |
| description | [itemBody](../resources/itembody.md) | Description of the townhall. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Start time of the townhall. |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | End time of the townhall. |

## Response

If successful, this method returns a `201 Created` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualevent_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls
Content-Type: application/json

{
  "displayName": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEvent"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEvent",
  "id": "520dd06e-4c8d-7b3f-f829-7b9f4cc3a5b3",
  "status": "String",
  "displayName": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  }
}
```

