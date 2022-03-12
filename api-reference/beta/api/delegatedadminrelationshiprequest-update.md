---
title: "Update delegatedAdminRelationshipRequest"
description: "Update the properties of a delegatedAdminRelationshipRequest object."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
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
PATCH /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/requests/{delegatedAdminRelationshipRequestId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|If-Match|Last known ETag value for the **delegatedAdminRelationshipRequest** to be updated. Required.|
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
  "name": "update_delegatedadminrelationshiprequest",
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipRequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/requests/{delegatedAdminRelationshipRequestId}
Authorization: Bearer {token}
If-Match: W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
  "action": "terminate",
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedAdminRelationshipRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#requests/$entity",
  "@odata.etag": "W/\"JyIxODAwZTY4My0wMDAwLTAyMDAtMDAwMC02MTU0OWFmMDAwMDAiJw==\"",
  "id": "dd4a23c7-070c-4d1c-8be8-1e86085ac9d1",
  "action": "terminate",
  "status": "created",
  "createdDateTime": "2022-02-10T10:55:47.1180588Z",
  "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z"
}
```

