---
title: "Get drive"
description: "Read the properties and relationships of a drive object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get drive
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [drive](../resources/drive.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /drive
GET /drives/{drivesId}
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

If successful, this method returns a `200 OK` response code and a [drive](../resources/drive.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_drive"
}
-->
``` http
GET https://graph.microsoft.com/beta/drive
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.drive"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.drive",
    "id": "2e2b90ae-90ae-2e2b-ae90-2b2eae902b2e",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "createdDateTime": "String (timestamp)",
    "description": "String",
    "eTag": "String",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "name": "String",
    "parentReference": {
      "@odata.type": "microsoft.graph.itemReference"
    },
    "webUrl": "String",
    "driveType": "String",
    "owner": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "quota": {
      "@odata.type": "microsoft.graph.quota"
    },
    "sharePointIds": {
      "@odata.type": "microsoft.graph.sharepointIds"
    },
    "system": {
      "@odata.type": "microsoft.graph.systemFacet"
    }
  }
}
```

