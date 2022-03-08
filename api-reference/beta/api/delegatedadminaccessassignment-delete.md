---
title: "Delete delegatedAdminAccessAssignment"
description: "Deletes a delegatedAdminAccessAssignment object."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "partner-center"
doc_type: apiPageType
---

# Delete delegatedAdminAccessAssignment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.

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
DELETE /tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments/{delegatedAdminAccessAssignmentId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|If-Match|{@odata.etag of delegated admin access assignment}. Use the GET API to get the @odata.etag first. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_delegatedadminaccessassignment"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments/{delegatedAdminAccessAssignmentId}
Authorization: Bearer {token}
If-Match: "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\""
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

