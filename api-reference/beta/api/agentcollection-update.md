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

Update the properties of an [agentCollection](../resources/agentcollection.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentcollection-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentcollection-update-permissions.md)]

> [!IMPORTANT]
> In addition to the permissions listed in the preceding table, the following lesser-privileged delegated permissions scoped to the special collections are supported for this API:
> - *AgentCollection.ReadWrite.Global* for **Global** collection
> - *AgentCollection.ReadWrite.Quarantined* for **Quarantined** collection

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

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


|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|List of owner identifiers for the agent collection, can be users or service principals. Required.|
|managedBy|String|Application (service principal) id managing the collection. Optional.|
|originatingStore|String| Source system/store where the collection originated. Optional.|
|createdBy|String|User who created the collection. Optional.|
|displayName|String|Friendly name of the collection. Required.|
|description|String|Description / purpose of the collection. Optional.|
|createdDateTime|DateTimeOffset|Timestamp when created. Optional.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last update. Optional.|



## Response

If successful, this method returns a `204 No Content` response code.

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
  "displayName": "New Display Name"
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

