---
title: "Get virtualEventWebinar"
description: "Read the properties and relationships of a virtualEventWebinar object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get virtualEventWebinar
Namespace: microsoft.graph



Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventwebinar-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{virtualEventWebinarId}
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

If successful, this method returns a `200 OK` response code and a [virtualEventWebinar](../resources/virtualeventwebinar.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventwebinar"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/{virtualEventWebinarId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventWebinar"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventWebinar",
    "id": "88b245ac-b0b2-f1aa-e34a-c81c27abdac2",
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
    ]
  }
}
```

