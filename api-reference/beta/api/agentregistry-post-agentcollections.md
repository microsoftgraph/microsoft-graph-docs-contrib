---
title: "Create agentCollection"
description: "Create a new agentCollection object."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Create agentCollection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agentCollection](../resources/agentcollection.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentregistry-post-agentcollections-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentregistry-post-agentcollections-permissions.md)]

> [!IMPORTANT]
> In addition to the permissions listed in the preceding table, the following lesser-privileged delegated and application permissions scoped to the special collections are supported for this API:
> - *AgentCollection.ReadWrite.Global* for **Global** collection
> - *AgentCollection.ReadWrite.Quarantined* for **Quarantined** collection

[!INCLUDE [rbac-agentregistry-apis](../includes/rbac-for-apis/rbac-agentregistry-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /agentRegistry/agentCollections
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [agentCollection](../resources/agentcollection.md) object.

You can specify the following properties when creating an **agentCollection**.


|Property|Type|Description|
|:---|:---|:---|
|ownerIds|String collection|IDs of owners allowed to manage the collection. Required.|
|managedBy|String|Application (service principal) id managing the collection. Optional.|
|originatingStore|String|Source system/store where the collection originated. Optional.|
|createdBy|String|User who created the collection. Optional.|
|displayName|String|Friendly name of the collection. Required.|
|description|String|Description / purpose of the collection. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [agentCollection](../resources/agentcollection.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_agentcollection_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/agentRegistry/agentCollections
Content-Type: application/json

{
  "id": "Security Copilot Platform Workspace: 001",
  "ownerIds": [
    "daf58b0e-44e1-433c-b6b0-ca70cae320b8",
    "b9108c41-d2d2-4e78-b073-92f57b752bd0"
  ],
  "managedBy": "719cc904-9700-4e08-9941-fd826cc84c60",
  "originatingStore": "Microsoft Security Copilot",
  "createdBy": "d47bffae-411a-4de9-8548-05e79bc01f0d",
  "displayName": "Conditional Access Agents",
  "description": "A collection of agents to manage your organizations conditional access policies"
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
HTTP/1.1 201 Created
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

