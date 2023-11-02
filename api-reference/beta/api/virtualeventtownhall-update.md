---
title: "Update virtualEventTownhall"
description: "Update the properties of a virtualEventTownhall object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update virtualEventTownhall
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH ** Entity URI for microsoft.graph.virtualEventTownhall not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|status|virtualEventStatus|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`. Optional.|
|displayName|String|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|description|[itemBody](../resources/itembody.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|endDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|createdBy|[communicationsIdentitySet](../resources/communicationsidentityset.md)|**TODO: Add Description** Inherited from [virtualEvent](../resources/virtualevent.md). Optional.|
|audience|meetingAudience|**TODO: Add Description**. The possible values are: `everyone`, `organization`, `unknownFutureValue`. Optional.|
|coOrganizers|[communicationsUserIdentity](../resources/communicationsuseridentity.md) collection|**TODO: Add Description** Optional.|
|invitedAttendees|[communicationsUserIdentity](../resources/communicationsuseridentity.md) collection|**TODO: Add Description** Optional.|
|isInviteOnly|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualeventtownhall"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.virtualEventTownhall not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
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
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "isInviteOnly": "Boolean"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "id": "fc6e8c15-2fd7-1dd5-caa0-87056e6a12be",
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
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ],
  "isInviteOnly": "Boolean"
}
```

