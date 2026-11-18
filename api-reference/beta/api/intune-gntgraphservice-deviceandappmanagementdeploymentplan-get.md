---
title: "Get deviceAndAppManagementDeploymentPlan"
description: "Retrieve the properties and relationships of a deviceAndAppManagementDeploymentPlan object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Get deviceAndAppManagementDeploymentPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Retrieve the properties and relationships of a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-get-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeploymentplan-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /deviceManagement/deploymentPlans/{deviceAndAppManagementDeploymentPlan-id}
```

## Optional query parameters

Use `$select` to retrieve **ringTemplates** and **roleScopeTagIds**. These properties aren't returned unless explicitly selected on an individual plan.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object in the response body.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-get-1-request" } -->
```http
GET https://graph.microsoft.com/beta/deviceManagement/deploymentPlans/f47b2c1d-8e9a-4f63-b2c7-3d5e8a9f1c4b?$select=id,displayName,ringTemplates,roleScopeTagIds,ringCount
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-get-1-response", "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPlan"} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPlan",
  "id": "f47b2c1d-8e9a-4f63-b2c7-3d5e8a9f1c4b",
  "displayName": "Contoso standard rollout",
  "roleScopeTagIds": [
    "0"
  ],
  "ringTemplates": [
    {
      "displayName": "IT pilot",
      "order": 1,
      "activationCriteria": {
        "@odata.type": "#microsoft.graph.deviceAndAppManagementRingActivationDurationCriteria",
        "duration": "P0D"
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
    },
    {
      "displayName": "Early adopters",
      "order": 2,
      "activationCriteria": {
        "@odata.type": "#microsoft.graph.deviceAndAppManagementRingActivationDurationCriteria",
        "duration": "P3D"
      },
      "assignmentConfigurations": [
        {
          "target": {
            "@odata.type": "#microsoft.graph.groupAssignmentTarget",
            "groupId": "c79ffc2a-5d79-4690-8db2-20f6eb5cb023"
          },
          "operation": "add"
        }
      ]
    }
  ],
  "ringCount": 2
}
```
