---
title: "Create granularAdminOperation"
description: "Create a new granularAdminOperation object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Create granularAdminOperation
Namespace: microsoft.graph



Create a new [granularAdminOperation](../resources/granularadminoperation.md) object.

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
POST /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [granularAdminOperation](../resources/granularadminoperation.md) object.

You can specify the following properties when creating a **granularAdminOperation**.

|Property|Type|Description|
|:---|:---|:---|
|operationType|String|**TODO: Add Description** Required.|
|data|String|**TODO: Add Description** Required.|
|status|String|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and a [granularAdminOperation](../resources/granularadminoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_granularadminoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/operations
Content-Type: application/json
Content-length: 170

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminOperation",
  "operationType": "String",
  "data": "String",
  "status": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminOperation",
  "id": "5640623e-b692-c9a1-8ab1-2ce73a84fe6f",
  "operationType": "String",
  "data": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

