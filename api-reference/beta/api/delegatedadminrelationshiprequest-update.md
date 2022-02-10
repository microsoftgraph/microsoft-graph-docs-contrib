---
title: "Update delegatedAdminRelationshipRequest"
description: "Update the properties of a delegatedAdminRelationshipRequest object."
author: "smrtsec"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Update delegatedAdminRelationshipRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) object.

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
PATCH /tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/requests/{delegatedAdminRelationshipRequestId}
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
|action|String|The action to be performed on the delegated admin relationship. Required.|
|status|String|The status of the request. Optional.|
|createdDateTime|DateTimeOffset|The date and time (ISO 8601) at which the relationship request was created in UTC. This is set by the system and cannot be set by the caller. Optional.|
|lastModifiedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship request was last modified in UTC. This is set by the system and cannot be set by the caller. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_delegatedadminrelationshiprequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/requests/{delegatedAdminRelationshipRequestId}
Content-Type: application/json
Content-length: 120

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
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
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
  "id": "5a6666c9-7282-0a41-67aa-25a5a3fbf339",
  "action": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

