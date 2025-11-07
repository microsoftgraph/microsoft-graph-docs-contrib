---
title: "Update agentCollection"
description: "Update the properties of an agentCollection object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Update agentCollection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an agentCollection object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcollection-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcollection-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /agentRegistry/agentCollections/{agentCollectionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|**TODO: Add Description** Required.|
|managedBy|String|**TODO: Add Description** Optional.|
|originatingStore|String|**TODO: Add Description** Optional.|
|createdBy|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Required.|
|description|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [agentCollection](../resources/agentcollection.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_agentcollection"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/agentRegistry/agentCollections/{agentCollectionId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentCollection",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
  "displayName": "String",
  "description": "String"
}
```


### Response

The following example shows the response.
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
  "@odata.type": "#microsoft.graph.agentCollection",
  "id": "c2d9e3ff-01a4-890c-f2bc-8edd3bc2eb24",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

