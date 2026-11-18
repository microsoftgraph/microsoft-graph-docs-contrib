---
title: "List deviceAndAppManagementDeploymentPlans"
description: "Get a list of deviceAndAppManagementDeploymentPlan objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List deviceAndAppManagementDeploymentPlans

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Get a list of [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-list-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeploymentplan-list-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /deviceManagement/deploymentPlans
```

## Optional query parameters

Supports `$filter` with `contains` on **displayName** and `eq` on **allowedAssignmentFilterPlatform**, and `$orderby` on **displayName**. The maximum page size is 50. Follow `@odata.nextLink` to retrieve subsequent pages. **ringTemplates** and **roleScopeTagIds** aren't returned by this operation, even when selected.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) objects in the response body.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-list-1-request" } -->
```http
GET https://graph.microsoft.com/beta/deviceManagement/deploymentPlans
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-list-1-response", "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPlan"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPlan",
      "id": "f47b2c1d-8e9a-4f63-b2c7-3d5e8a9f1c4b",
      "versionNumber": 1,
      "displayName": "Contoso standard rollout",
      "description": "Pilot followed by early adopters",
      "allowedAssignmentFilterPlatform": "windows10AndLater",
      "createdDateTime": "2026-11-05T13:00:00Z",
      "lastModifiedDateTime": "2026-11-05T13:00:00Z",
      "ringCount": 2
    }
  ]
}
```
