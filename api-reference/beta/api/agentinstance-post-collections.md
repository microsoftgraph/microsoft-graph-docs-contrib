---
title: "Add agentCollection"
description: "Add collections by posting to the collections collection."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Add agentCollection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add collections by posting to the collections collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentinstance-post-collections-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentinstance-post-collections-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /agentRegistry/agentInstances/{agentInstanceId}/collections/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [agentCollection](../resources/agentcollection.md) object.

You can specify the following properties when creating an **agentCollection**.

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

If successful, this method returns a `204 No Content` response code and an [agentCollection](../resources/agentcollection.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agentcollection_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentInstances/{agentInstanceId}/collections/$ref
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
  "truncated": true,
  "@odata.type": "microsoft.graph.agentCollection"
}
-->
``` http
HTTP/1.1 204 No Content
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

