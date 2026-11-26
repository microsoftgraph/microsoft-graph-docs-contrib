---
title: "Get deviceAndAppManagementDeployment"
description: "Retrieve the properties and relationships of a deviceAndAppManagementDeployment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Get deviceAndAppManagementDeployment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Retrieve the properties and relationships of a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-get-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeployment-get-permissions.md)]

For mobile app payloads, use a listed **DeviceManagementApps** permission. For configuration policy payloads, use **DeviceManagementConfiguration.ReadWrite.All**.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /deviceManagement/deployments/{deviceAndAppManagementDeployment-id}
```

## Optional query parameters

Use `$expand=rings` to retrieve rings, or `$expand=rings($expand=assignmentConfigurations)` to include their assignment configurations.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer|`include-unknown-enum-members`. Optional. Use to retrieve the `pendingApproval` state.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object in the response body.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-get-1-request" } -->
```http
GET https://graph.microsoft.com/beta/deviceManagement/deployments/7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a?$expand=rings($expand=assignmentConfigurations)
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-get-1-response", "@odata.type": "microsoft.graph.deviceAndAppManagementDeployment"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeployment",
  "id": "7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a",
  "deploymentPlanId": null,
  "displayName": "Contoso app rollout",
  "description": "Pilot rollout of the Contoso app",
  "payloads": [
    {
      "payloadId": "3c7d9f4e-6b3d-4f7e-9f84-2d3cba91f0a2",
      "payloadDisplayName": "Contoso app",
      "payloadEntitySet": "mobileApps",
      "payloadUnifiedPlatform": "windows",
      "workloadType": "application"
    }
  ],
  "createdDateTime": "2026-11-05T13:00:00Z",
  "lastModifiedDateTime": "2026-11-05T13:00:00Z",
  "mode": "draft",
  "state": "notStarted",
  "ringCount": 1,
  "startDateTime": "2026-11-05T13:00:00Z",
  "rings": [
    {
      "displayName": "IT pilot",
      "order": 1,
      "activationCriteria": {
        "@odata.type": "#microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
        "startDateTime": "2026-11-10T08:00:00Z"
      },
      "assignmentConfigurations": [
        {
          "id": "12a3b4c5-6789-4def-9876-1a2b3c4d5e6f",
          "target": {
            "@odata.type": "#microsoft.graph.groupAssignmentTarget",
            "groupId": "574b799a-b815-408b-85d3-8a57bab64bdf"
          },
          "operation": "add"
        }
      ],
      "id": "c3d4e5f6-a7b8-4012-8def-345678901234",
      "state": "notActivated"
    }
  ]
}
```
