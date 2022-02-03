---
title: "Update granularAdminRelationshipRequest"
description: "Update the properties of a granularAdminRelationshipRequest object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: apiPageType
---

# Update granularAdminRelationshipRequest
Namespace: microsoft.graph



Update the properties of a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.

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
PATCH /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/requests/{granularAdminRelationshipRequestId}
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
|action|String|**TODO: Add Description** Required.|
|status|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_granularadminrelationshiprequest"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/requests/{granularAdminRelationshipRequestId}
Content-Type: application/json
Content-length: 120

{
  "@odata.type": "#microsoft.graph.granularAdminRelationshipRequest",
  "action": "String",
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
  "@odata.type": "#microsoft.graph.granularAdminRelationshipRequest",
  "id": "5a6666c9-7282-0a41-67aa-25a5a3fbf339",
  "action": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

