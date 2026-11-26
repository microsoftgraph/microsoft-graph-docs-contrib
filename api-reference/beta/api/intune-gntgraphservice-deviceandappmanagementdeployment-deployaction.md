---
title: "deployAction action"
description: "Perform a management action on a deviceAndAppManagementDeployment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# deployAction action

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Perform a management action on a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

Use `commit` after configuring assignments for every payload. Commit validates assignments and transitions a draft deployment to active mode. An active deployment can't return to draft mode.

Use `pause` to hold rollout, `resume` to continue a paused rollout, and `cancel` to abandon rollout. Resume returns the state to `notStarted` if rollout hadn't begun, or `inProgress` if it had.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-permissions.md)]

For mobile app payloads, use a listed **DeviceManagementApps** permission. For configuration policy payloads, use **DeviceManagementConfiguration.ReadWrite.All**.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /deviceManagement/deployments/{deviceAndAppManagementDeployment-id}/deployAction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|`application/json`. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|action|[deviceAndAppManagementDeploymentAction](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentaction.md)|Required. The action to perform: `commit`, `pause`, `resume`, or `cancel`.|

## Response

If successful, this action returns a `200 OK` response code and a Boolean value in the response body.

## Examples

### Example 1: Commit a deployment

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-1-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a/deployAction
Content-Type: application/json

{
  "action": "commit"
}
```

#### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-1-response"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```

### Example 2: Pause a deployment

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-2-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a/deployAction
Content-Type: application/json

{
  "action": "pause"
}
```

#### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-2-response"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```

### Example 3: Resume a deployment

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-3-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a/deployAction
Content-Type: application/json

{
  "action": "resume"
}
```

#### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-3-response"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```

### Example 4: Cancel a deployment

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-4-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a/deployAction
Content-Type: application/json

{
  "action": "cancel"
}
```

#### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-deployaction-4-response"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": true
}
```
