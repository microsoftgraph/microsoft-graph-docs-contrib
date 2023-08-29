---
title: "Update gcpRole"
description: "Update the properties of a gcpRole object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update gcpRole
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [gcpRole](../resources/gcprole.md) object.

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
PATCH /gcpRole
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Required.|
|gcpRoleType|gcpRoleType|**TODO: Add Description**. The possible values are: `system`, `custom`, `unknownFutureValue`. Required.|
|scopes|[gcpScope](../resources/gcpscope.md) collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [gcpRole](../resources/gcprole.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_gcprole"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/gcpRole
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.gcpRole",
  "externalId": "String",
  "displayName": "String",
  "gcpRoleType": "String",
  "scopes": [
    {
      "@odata.type": "microsoft.graph.gcpScope"
    }
  ]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.gcpRole",
  "id": "96637979-fec0-3c69-2c9d-87f28a021e2a",
  "externalId": "String",
  "displayName": "String",
  "gcpRoleType": "String",
  "scopes": [
    {
      "@odata.type": "microsoft.graph.gcpScope"
    }
  ]
}
```

