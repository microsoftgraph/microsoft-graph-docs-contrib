---
title: "Create cloudPcPoolAssignment"
description: "Create a new cloudPcPoolAssignment for a cloudPcPool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# Create cloudPcPoolAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) for a [cloudPcPool](../resources/cloudpcpool.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcpool_post_assignments" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcpool-post-assignments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /deviceManagement/virtualEndpoint/cloudPcPools/{cloudPcPool-id}/assignments
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object. Use `#microsoft.graph.cloudPcAgentPoolUserAssignment` as the **@odata.type**.

The following table lists the properties that are required when you create a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md).

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Required. The type of assignment. Use `#microsoft.graph.cloudPcAgentPoolUserAssignment`.|
|userPrincipalId|String|Required. The unique identifier of the user principal.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpcpoolassignment"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890/assignments
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolUserAssignment",
  "userPrincipalId": "f6a7b8c9-d0e1-2345-f678-901234567890"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcPoolAssignment"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolUserAssignment",
  "id": "cloudPcPoolAssignmentId",
  "userPrincipalId": "f6a7b8c9-d0e1-2345-f678-901234567890"
}
```
