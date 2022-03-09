---
title: "Create delegatedAdminAccessAssignment"
description: "Create a new delegatedAdminAccessAssignment object."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create delegatedAdminAccessAssignment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.

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
POST /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.

You can specify the following properties when creating a **delegatedAdminAccessAssignment**.

|Property|Type|Description|
|:---|:---|:---|
|accessContainer|[microsoft.graph.delegatedAdminAccessContainer](../resources/delegatedadminaccesscontainer.md)|The access container of the access assignment. Required.|
|accessDetails|[microsoft.graph.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the access assignment. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_delegatedadminaccessassignment_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments
Authorization: Bearer {token}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "accessContainer": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedAdminAccessAssignment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "id": "a9d6cf90-083a-47dc-ace2-1da98be3f344",
  "status": "pending",
  "accessContainer": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "createdDateTime": "2022-02-13T10:33:52.3182097Z",
  "lastModifiedDateTime": "2022-03-09T20:34:59.3282097Z"
}
```

