---
title: "List gcpServiceAccounts"
description: "Get a list of the gcpServiceAccount objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List gcpServiceAccounts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [gcpServiceAccount](../resources/gcpserviceaccount.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "gcpserviceaccount-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/gcpserviceaccount-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.gcpServiceAccount not found
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

If successful, this method returns a `200 OK` response code and a collection of [gcpServiceAccount](../resources/gcpserviceaccount.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_gcpserviceaccount"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.gcpServiceAccount not found
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpServiceAccount)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.gcpServiceAccount",
      "id": "75944ca0-bd1b-60b5-ab39-c95a82ba35c9",
      "displayName": "String",
      "source": {
        "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
      },
      "externalId": "String"
    }
  ]
}
```

