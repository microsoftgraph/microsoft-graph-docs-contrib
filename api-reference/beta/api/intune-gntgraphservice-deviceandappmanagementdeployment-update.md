---
title: "Update deviceAndAppManagementDeployment"
description: "Update a deviceAndAppManagementDeployment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Update deviceAndAppManagementDeployment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

Only **displayName** and **description** can be updated. Rings, payloads, and deployment mode and state can't be changed with this method. Use **deployAction** to manage rollout state.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-update-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeployment-update-permissions.md)]

For mobile app payloads, use a listed **DeviceManagementApps** permission. For configuration policy payloads, use **DeviceManagementConfiguration.ReadWrite.All**.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /deviceManagement/deployments/{deviceAndAppManagementDeployment-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|`application/json`. Required.|

## Request body

In the request body, supply a JSON representation of a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional. The deployment description. Maximum length is 1000 characters.|
|displayName|String|Optional. The display name. Required during creation and can't be cleared during updates. Maximum length is 256 characters. |

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-update-1-request" } -->
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a
Content-Type: application/json

{
  "displayName": "Contoso app rollout - revised",
  "description": "Updated pilot rollout description"
}
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-update-1-response"} -->
```http
HTTP/1.1 204 No Content
```
