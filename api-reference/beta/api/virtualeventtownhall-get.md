---
title: "Get virtualEventTownhall"
description: "Read the properties and relationships of a virtualEventTownhall object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get virtualEventTownhall
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Entity URI for microsoft.graph.virtualEventTownhall not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventtownhall"
}
-->
``` http
GET https://graph.microsoft.com/beta** Entity URI for microsoft.graph.virtualEventTownhall not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventTownhall"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
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
}
```

