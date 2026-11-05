---
title: "Create deviceAndAppManagementDeployment"
description: "Create a deviceAndAppManagementDeployment object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create deviceAndAppManagementDeployment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.

The deployment is created in `draft` mode. Configure its payload assignments before invoking **deployAction** with `commit`. Currently, exactly one payload and 1 through 10 rings are supported.

A **deploymentPlanId** doesn't populate rings automatically. Supply the rings explicitly, using absolute UTC activation times. Each group ID must be unique across the deployment. Exclusion groups are allowed only in the first ring; all-users and all-devices targets only in the final ring.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-create-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeployment-create-permissions.md)]

For mobile app payloads, use a listed **DeviceManagementApps** permission. For configuration policy payloads, use **DeviceManagementConfiguration.ReadWrite.All**.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /deviceManagement/deployments
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
|deploymentPlanId|String|Optional. The identifier of the associated deployment plan, or null for a custom deployment. Maximum length is 255 characters. Specifying this value doesn't automatically populate rings from the plan.|
|description|String|Optional. The deployment description. Maximum length is 1000 characters.|
|displayName|String|Required. The display name. Required during creation and can't be cleared during updates. Maximum length is 256 characters. |
|payloads|[deviceAndAppManagementDeploymentPayload](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentpayload.md) collection|Required. The payload metadata for the deployment. Required during creation. Currently contains exactly one payload. |
|rings|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) collection|Required. The deployment rings, including their activation criteria and assignment configurations. Contains 1 through 10 rings.|

## Response

If successful, this method returns a `201 Created` response code and a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object in the response body.

### Errors

Returns `400 Bad Request` when the referenced deployment plan doesn't exist, the payload already has an active deployment, or ring target validation fails.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-create-1-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceManagement/deployments
Content-Type: application/json

{
  "displayName": "Contoso app rollout",
  "description": "Pilot rollout of the Contoso app",
  "payloads": [
    {
      "payloadId": "3c7d9f4e-6b3d-4f7e-9f84-2d3cba91f0a2",
      "payloadEntitySet": "mobileApps"
    }
  ],
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
          "target": {
            "@odata.type": "#microsoft.graph.groupAssignmentTarget",
            "groupId": "574b799a-b815-408b-85d3-8a57bab64bdf"
          },
          "operation": "add"
        }
      ]
    }
  ]
}
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeployment-create-1-response", "@odata.type": "microsoft.graph.deviceAndAppManagementDeployment"} -->
```http
HTTP/1.1 201 Created
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
  "startDateTime": "2026-11-05T13:00:00Z"
}
```
