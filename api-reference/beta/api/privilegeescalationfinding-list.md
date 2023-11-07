---
title: "List privilegeEscalationFindings"
description: "Get a list of the privilegeEscalationFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List privilegeEscalationFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [privilegeEscalationFinding](../resources/privilegeescalationfinding.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
Not supported
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.privilegeEscalationFinding not found
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

If successful, this method returns a `200 OK` response code and a collection of [privilegeEscalationFinding](../resources/privilegeescalationfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_privilegeescalationfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.privilegeEscalationFinding not found
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.privilegeEscalationFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.privilegeEscalationFinding",
      "id": "73503037-e83d-4cbc-e244-f7dfa54afc1c",
      "createdDateTime": "String (timestamp)",
      "permissionsCreepIndex": {
        "@odata.type": "microsoft.graph.permissionsCreepIndex"
      },
      "lastActiveDateTime": "String (timestamp)"
    }
  ]
}
```

