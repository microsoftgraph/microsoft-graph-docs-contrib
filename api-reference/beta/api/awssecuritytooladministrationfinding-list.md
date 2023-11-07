---
title: "List awsSecurityToolAdministrationFindings"
description: "Get a list of the awsSecurityToolAdministrationFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List awsSecurityToolAdministrationFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) objects and their properties.

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
GET ** Collection URI for microsoft.graph.awsSecurityToolAdministrationFinding not found
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

If successful, this method returns a `200 OK` response code and a collection of [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_awssecuritytooladministrationfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.awsSecurityToolAdministrationFinding not found
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.awsSecurityToolAdministrationFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.awsSecurityToolAdministrationFinding",
      "id": "acde727a-4059-df06-336d-31a2b16e2a2a",
      "createdDateTime": "String (timestamp)",
      "securityTools": "String",
      "permissionsCreepIndex": {
        "@odata.type": "microsoft.graph.permissionsCreepIndex"
      },
      "lastActiveDateTime": "String (timestamp)"
    }
  ]
}
```

