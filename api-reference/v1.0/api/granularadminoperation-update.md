---
title: "Update granularAdminOperation"
description: "Update the properties of a granularAdminOperation object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Update granularAdminOperation
Namespace: microsoft.graph



Update the properties of a [granularAdminOperation](../resources/granularadminoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/operations/{granularAdminOperationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|operationType|String|**TODO: Add Description** Required.|
|data|String|**TODO: Add Description** Required.|
|status|String|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [granularAdminOperation](../resources/granularadminoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_granularadminoperation"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/operations/{granularAdminOperationId}
Content-Type: application/json
Content-length: 138

{
  "@odata.type": "#microsoft.graph.granularAdminOperation",
  "operationType": "String",
  "data": "String",
  "status": "String"
}
```


### Response
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
  "@odata.type": "#microsoft.graph.granularAdminOperation",
  "id": "5640623e-b692-c9a1-8ab1-2ce73a84fe6f",
  "operationType": "String",
  "data": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

