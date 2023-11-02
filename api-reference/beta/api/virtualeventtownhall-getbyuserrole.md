---
title: "virtualEventTownhall: getByUserRole"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# virtualEventTownhall: getByUserRole
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-getbyuserrole-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-getbyuserrole-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.virtualEventTownhall not found/getByUserRole
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|role|String|**TODO: Add Description**|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "virtualeventtownhallthis.getbyuserrole"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.virtualEventTownhall not found/getByUserRole(role='parameterValue')
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventTownhall)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventTownhall",
      "id": "String (identifier)",
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
  ]
}
```

