---
title: "cloudPcPool: assign"
description: "Batch assign and unassign principals to a cloudPcPool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# cloudPcPool: assign

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Batch assign and unassign principals to a [cloudPcPool](../resources/cloudpcpool.md). Accepts explicit add and remove lists in a single request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcpool_assign" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcpool-assign-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /deviceManagement/virtualEndpoint/cloudPcPools/{cloudPcPool-id}/assign
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|addAssignments|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|Optional. The assignments to add. Supports polymorphic types.|
|removeAssignmentIds|String collection|Optional. The IDs of assignments to remove.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcpool_assign"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890/assign
Content-Type: application/json

{
  "addAssignments": [
    {
      "@odata.type": "#microsoft.graph.cloudPcAgentPoolUserAssignment",
      "userPrincipalId": "f6a7b8c9-d0e1-2345-f678-901234567890"
    },
    {
      "@odata.type": "#microsoft.graph.cloudPcAgentPoolServiceAssignment",
      "servicePrincipalId": "a1b2c3d4-e5f6-7890-abcd-000000000001"
    }
  ],
  "removeAssignmentIds": [
    "c7d8e9f0-a1b2-3456-cdef-890123456789"
  ]
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
