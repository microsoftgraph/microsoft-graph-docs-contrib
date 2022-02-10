---
title: "Update delegatedAdminAccessAssignment"
description: "Update the properties of a delegatedAdminAccessAssignment object."
author: "smrtsec"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Update delegatedAdminAccessAssignment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object.

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
PATCH /tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments/{delegatedAdminAccessAssignmentId}
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
|status|String|The status of the assignment. Optional.|
|accessContainer|[microsoft.partner.customerServiceAdministration.delegatedAdminAccessContainer](../resources/delegatedadminaccesscontainer.md)|The access container of the access assignment. Required.|
|accessDetails|[microsoft.partner.customerServiceAdministration.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the access assignment. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [delegatedAdminAccessAssignment](../resources/delegatedadminaccessassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_delegatedadminaccessassignment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}/accessAssignments/{delegatedAdminAccessAssignmentId}
Content-Type: application/json
Content-length: 284

{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "status": "String",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminAccessAssignment",
  "id": "62bb42bf-e5d9-31d8-cc8c-d1a442d08341",
  "status": "String",
  "accessContainer": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

