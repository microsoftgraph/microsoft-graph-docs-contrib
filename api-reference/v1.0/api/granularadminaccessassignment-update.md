---
title: "Update granularAdminAccessAssignment"
description: "Update the properties of a granularAdminAccessAssignment object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Update granularAdminAccessAssignment
Namespace: microsoft.graph



Update the properties of a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.

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
PATCH /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/accessAssignments/{granularAdminAccessAssignmentId}
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
|status|String|**TODO: Add Description** Optional.|
|accessContainer|[microsoft.partner.customerServiceAdministration.granularAdminAccessContainer](../resources/granularadminaccesscontainer.md)|**TODO: Add Description** Required.|
|accessDetails|[microsoft.partner.customerServiceAdministration.granularAdminAccessDetails](../resources/granularadminaccessdetails.md)|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_granularadminaccessassignment"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/accessAssignments/{granularAdminAccessAssignmentId}
Content-Type: application/json
Content-length: 284

{
  "@odata.type": "#microsoft.graph.granularAdminAccessAssignment",
  "status": "String",
  "accessContainer": {
    "@odata.type": "microsoft.graph.granularAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
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
  "@odata.type": "#microsoft.graph.granularAdminAccessAssignment",
  "id": "62bb42bf-e5d9-31d8-cc8c-d1a442d08341",
  "status": "String",
  "accessContainer": {
    "@odata.type": "microsoft.graph.granularAdminAccessContainer"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

