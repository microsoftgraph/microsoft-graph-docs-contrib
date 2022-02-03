---
title: "Create granularAdminRelationshipRequest"
description: "Create a new granularAdminRelationshipRequest object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: ""gdap""
doc_type: apiPageType
---

# Create granularAdminRelationshipRequest
Namespace: microsoft.graph



Create a new [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.

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
POST /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/requests
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object.

You can specify the following properties when creating a **granularAdminRelationshipRequest**.

|Property|Type|Description|
|:---|:---|:---|
|action|String|**TODO: Add Description** Required.|
|status|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [granularAdminRelationshipRequest](../resources/granularadminrelationshiprequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_granularadminrelationshiprequest_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/requests
Content-Type: application/json
Content-length: 152

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminRelationshipRequest",
  "action": "String",
  "status": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminRelationshipRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminRelationshipRequest",
  "id": "5a6666c9-7282-0a41-67aa-25a5a3fbf339",
  "action": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

