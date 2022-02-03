---
title: "Create granularAdminAccessAssignment"
description: "Create a new granularAdminAccessAssignment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create granularAdminAccessAssignment
Namespace: microsoft.graph



Create a new [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.

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
POST /tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/accessAssignments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object.

You can specify the following properties when creating a **granularAdminAccessAssignment**.

|Property|Type|Description|
|:---|:---|:---|
|status|String|**TODO: Add Description** Optional.|
|accessContainer|[microsoft.partner.customerServiceAdministration.granularAdminAccessContainer](../resources/granularadminaccesscontainer.md)|**TODO: Add Description** Required.|
|accessDetails|[microsoft.partner.customerServiceAdministration.granularAdminAccessDetails](../resources/granularadminaccessdetails.md)|**TODO: Add Description** Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [granularAdminAccessAssignment](../resources/granularadminaccessassignment.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_granularadminaccessassignment_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships/{granularAdminRelationshipId}/accessAssignments
Content-Type: application/json
Content-length: 316

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminAccessAssignment",
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
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminAccessAssignment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminAccessAssignment",
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

