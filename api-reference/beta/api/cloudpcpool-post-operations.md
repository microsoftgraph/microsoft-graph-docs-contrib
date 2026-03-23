---
title: "Create cloudPcPoolOperation"
description: "Create a new operation for a cloudPcPool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/23/2026
---

# Create cloudPcPoolOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new operation for a [cloudPcPool](../resources/cloudpcpool.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcpool_post_operations" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcpool-post-operations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /deviceManagement/virtualEndpoint/cloudPcPools/{cloudPcPool-id}/operations
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [cloudPcPoolOperation](../resources/cloudpcpooloperation.md) object. The operation is polymorphic; use a derived type such as `#microsoft.graph.cloudPcPoolReprovisionOperation` as the `@odata.type`.

The following table lists the properties that are required when you create a [cloudPcPoolOperation](../resources/cloudpcpooloperation.md).

|Property|Type|Description|
|:---|:---|:---|
|@odata.type|String|Required. The type of operation. Use `#microsoft.graph.cloudPcPoolReprovisionOperation`.|
|reservePercentage|Int32|Required for reprovision operations. The percentage of Cloud PCs to keep in reserve. Valid value is 0-99.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcPoolOperation](../resources/cloudpcpooloperation.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_cloudpcpooloperation"
}
-->

```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPcPools/a1b2c3d4-e5f6-7890-abcd-ef1234567890/operations
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcPoolReprovisionOperation",
  "reservePercentage": 20
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcPoolOperation"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcPoolReprovisionOperation",
  "id": "f6a7b8c9-d0e1-2345-ef67-890123456789",
  "createdDateTime": "2026-01-21T10:30:00Z",
  "status": "pending",
  "reservePercentage": 20,
  "errorCode": "none",
  "errorMessage": null
}
```
