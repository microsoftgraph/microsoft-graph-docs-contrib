---
title: "virtualEventWebinar: getByUserIdAndRole"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# virtualEventWebinar: getByUserIdAndRole
Namespace: microsoft.graph



**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventwebinar-getbyuseridandrole-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-getbyuseridandrole-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/webinars/getByUserIdAndRole
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|userId|String|**TODO: Add Description**|
|role|String|**TODO: Add Description**|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [virtualEventWebinar](../resources/virtualeventwebinar.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "virtualeventwebinarthis.getbyuseridandrole"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/getByUserIdAndRole(userId='parameterValue',role='parameterValue')
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventWebinar)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventWebinar",
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
      ]
    }
  ]
}
```

