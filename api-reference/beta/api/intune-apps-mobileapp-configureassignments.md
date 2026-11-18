---
title: "configureAssignments action"
description: "Configure deployment assignments for a mobileApp object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# configureAssignments action

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configure deployment assignments for a [mobileApp](../resources/intune-apps-mobileapp.md) object.

Configure every assignment for one deployment in a single request. The collection must be nonempty and contain only **deviceAndAppManagementDeploymentAssignment** objects with the same **deploymentId**. The **assignmentConfigurationId** values must match the configurations returned by the deployment's rings. Don't supply **target**; targets come from the deployment.

Specify `@odata.type` as `#microsoft.graph.deviceAndAppManagementDeploymentAssignment` for every assignment.

Supported apps are published Win32 line-of-business apps and Win32 catalog apps. **assignmentDetails** must be a **mobileAppAssignmentDetails** object with **intent** set to `requiredInstall`. Other intents, unpublished apps, and Global MAM apps aren't supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-apps-mobileapp-configureassignments-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-apps-mobileapp-configureassignments-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /deviceAppManagement/mobileApps/{mobileApp-id}/configureAssignments
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
|assignments|[deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) collection|Required. All deployment assignments to configure for a single deployment. Use the [deviceAndAppManagementDeploymentAssignment](../resources/intune-apps-deviceandappmanagementdeploymentassignment.md) derived type.|

## Response

If successful, this action returns a `202 Accepted` response code. It doesn't return a response body.

### Errors

Returns `400 Bad Request` for missing or invalid parameters, mismatched deployment identifiers, assignment count mismatches, or unknown assignment configuration identifiers. Returns `403 Forbidden` when Graph permissions, target-group scope, or assignment-filter scope tags aren't sufficient. Returns `404 Not Found` when the payload or deployment doesn't exist.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-apps-mobileapp-configureassignments-1-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/3c7d9f4e-6b3d-4f7e-9f84-2d3cba91f0a2/configureAssignments
Content-Type: application/json

{
  "assignments": [
    {
      "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentAssignment",
      "assignmentConfigurationId": "12a3b4c5-6789-4def-9876-1a2b3c4d5e6f",
      "deploymentId": "7f3c1bd0-4c1c-4b1e-a4cf-2b2e3c9c2f7a",
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

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-apps-mobileapp-configureassignments-1-response"} -->
```http
HTTP/1.1 202 Accepted
```
