---
title: "Delete deviceAndAppManagementDeployment"
description: "Delete a deviceAndAppManagementDeployment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Delete deviceAndAppManagementDeployment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Delete a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

Only deployments in draft mode or in the `canceled` or `completed` state can be deleted.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-delete-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeployment-delete-permissions.md)]

For mobile app payloads, use a listed **DeviceManagementApps** permission. For configuration policy payloads, use **DeviceManagementConfiguration.ReadWrite.All**.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /deviceManagement/deployments/{deviceAndAppManagementDeployment-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-delete-1-request" } -->
```http
DELETE https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-delete-1-response"} -->
```http
HTTP/1.1 204 No Content
```
