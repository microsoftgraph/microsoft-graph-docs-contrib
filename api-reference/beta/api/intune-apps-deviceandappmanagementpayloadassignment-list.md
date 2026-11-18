---
title: "List deviceAndAppManagementPayloadAssignments"
description: "Get a list of deviceAndAppManagementPayloadAssignment objects for a mobile app or a configuration policy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# List deviceAndAppManagementPayloadAssignments

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Get a list of [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) objects for a mobile app or a configuration policy.

Currently, this operation supports deployment assignments for a specified deployment and payload. The collection is exposed only through the workload's **targetAssignments** relationship.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-apps-deviceandappmanagementpayloadassignment-list-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-apps-deviceandappmanagementpayloadassignment-list-permissions.md)]

For mobile apps, use a listed **DeviceManagementApps** permission. For configuration policies, use a listed **DeviceManagementConfiguration** permission.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /deviceAppManagement/mobileApps/{mobileApp-id}/targetAssignments
GET /deviceManagement/configurationPolicies/{deviceManagementConfigurationPolicy-id}/targetAssignments
```

## Optional query parameters

Use `$filter` with `eq` on `microsoft.graph.deviceAndAppManagementDeploymentAssignment/deploymentId` to retrieve assignments for a specific deployment. The default page size is 1000; use `$top` to request a smaller page. Follow `@odata.nextLink` to retrieve subsequent pages.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) objects in the response body. Deployment assignments have `@odata.type` set to `#microsoft.graph.deviceAndAppManagementDeploymentAssignment`.

## Examples

### Example 1: List mobile app deployment assignments

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-apps-deviceandappmanagementpayloadassignment-list-1-request" } -->
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/3c7d9f4e-6b3d-4f7e-9f84-2d3cba91f0a2/targetAssignments?$filter=microsoft.graph.deviceAndAppManagementDeploymentAssignment/deploymentId eq '7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a'
```

#### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-apps-deviceandappmanagementpayloadassignment-list-1-response", "@odata.type": "microsoft.graph.deviceAndAppManagementPayloadAssignment"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentAssignment",
      "assignmentConfigurationId": "12a3b4c5-6789-4def-9876-1a2b3c4d5e6f",
      "deploymentId": "7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a",
      "id": "12a3b4c5-6789-4def-9876-1a2b3c4d5e6f",
      "payloadId": "3c7d9f4e-6b3d-4f7e-9f84-2d3cba91f0a2",
      "target": {
        "@odata.type": "#microsoft.graph.groupAssignmentTarget",
        "groupId": "574b799a-b815-408b-85d3-8a57bab64bdf"
      },
      "assignmentDetails": {
        "@odata.type": "#microsoft.graph.mobileAppAssignmentDetails",
        "intent": "requiredInstall",
        "settings": {
          "@odata.type": "#microsoft.graph.win32LobAppAssignmentSettings",
          "notifications": "showAll"
        }
      }
    }
  ]
}
```

### Example 2: List configuration policy deployment assignments

#### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-apps-deviceandappmanagementpayloadassignment-list-2-request" } -->
```http
GET https://graph.microsoft.com/beta/deviceManagement/configurationPolicies/a1e5c9d7-4f02-4873-8e4b-91c0f5b7b3dd/targetAssignments?$filter=microsoft.graph.deviceAndAppManagementDeploymentAssignment/deploymentId eq '7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a'
```

#### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-apps-deviceandappmanagementpayloadassignment-list-2-response", "@odata.type": "microsoft.graph.deviceAndAppManagementPayloadAssignment"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentAssignment",
      "assignmentConfigurationId": "12a3b4c5-6789-4def-9876-1a2b3c4d5e6f",
      "deploymentId": "7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a",
      "id": "12a3b4c5-6789-4def-9876-1a2b3c4d5e6f",
      "payloadId": "a1e5c9d7-4f02-4873-8e4b-91c0f5b7b3dd",
      "target": {
        "@odata.type": "#microsoft.graph.groupAssignmentTarget",
        "groupId": "574b799a-b815-408b-85d3-8a57bab64bdf"
      },
      "assignmentDetails": null
    }
  ]
}
```
