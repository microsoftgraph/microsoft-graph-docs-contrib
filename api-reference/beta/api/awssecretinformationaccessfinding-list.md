---
title: "List awsSecretInformationAccessFindings"
description: "Get a list of the awsSecretInformationAccessFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List awsSecretInformationAccessFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.awsSecretInformationAccessFinding not found
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

If successful, this method returns a `200 OK` response code and a collection of [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_awssecretinformationaccessfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.awsSecretInformationAccessFinding not found
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsSecretInformationAccessFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.awsSecretInformationAccessFinding",
      "id": "b808eb06-18ef-bf68-4ab7-81404e98fe4d",
      "createdDateTime": "String (timestamp)",
      "secretInformationWebServices": "String",
      "permissionsCreepIndex": {
        "@odata.type": "microsoft.graph.permissionsCreepIndex"
      },
      "lastActiveDateTime": "String (timestamp)"
    }
  ]
}
```

