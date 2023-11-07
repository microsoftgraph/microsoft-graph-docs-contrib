---
title: "List awsRoles"
description: "Get the awsRole resources from the awsRoles navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List awsRoles
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the awsRole resources from the awsRoles navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "awsuser-list-awsRoles-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/awsuser-list-awsRoles-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.awsRole not found
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

If successful, this method returns a `200 OK` response code and a collection of [awsRole](../resources/awsrole.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_awsrole"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.awsRole not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.awsRole",
      "id": "bcd429ef-aab9-eb36-94ef-7566b213a2e3",
      "displayName": "String",
      "source": {
        "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
      },
      "externalId": "String",
      "trustEntityType": "String",
      "roleType": "String"
    }
  ]
}
```

