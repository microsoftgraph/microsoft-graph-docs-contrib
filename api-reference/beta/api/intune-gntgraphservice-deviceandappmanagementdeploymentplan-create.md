---
title: "Create deviceAndAppManagementDeploymentPlan"
description: "Create a deviceAndAppManagementDeploymentPlan object."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: apiPageType
ms.date: 08/01/2024
---

# Create deviceAndAppManagementDeploymentPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object.

The plan must retain at least one ring template. Sending an empty or null **ringTemplates** collection returns `400 Bad Request`. Omitting the collection from an update preserves the existing templates. The first ring must use `P0D`; subsequent ring delays must be at least one hour.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-create-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/intune-gntgraphservice-deviceandappmanagementdeploymentplan-create-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /deviceManagement/deploymentPlans
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|`application/json`. Required.|

## Request body

In the request body, supply a JSON representation of a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object.

|Property|Type|Description|
|:---|:---|:---|
|allowedAssignmentFilterPlatform|[devicePlatformType](../resources/intune-gntgraphservice-deviceplatformtype.md)|Optional. The platform allowed for assignment filters. The default value is `android`. When `unknown`, assignment filters can't be configured. The possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`. Use `Prefer: include-unknown-enum-members` to retrieve `windowsMobileApplicationManagement`. |
|description|String|Optional. The description of the deployment plan. Maximum length is 1000 characters.|
|displayName|String|Required. The display name. Required during creation and can't be cleared during updates. Maximum length is 256 characters. |
|ringTemplates|[deviceAndAppManagementDeploymentRingTemplate](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringtemplate.md) collection|Required. The reusable ring templates. Required during creation. Contains 1 through 10 templates and can't be empty or null on creation or update. |
|roleScopeTagIds|String collection|Optional. The scope tag identifiers that control plan visibility. Contains 1 through 100 identifiers. |

## Response

If successful, this method returns a `201 Created` response code and a [deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) object in the response body.

### Errors

Returns `400 Bad Request` for invalid ring templates, incompatible assignment-filter platforms, or an update exceeding the maximum plan version of 1000.

## Example

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-create-1-request" } -->
```http
POST https://graph.microsoft.com/beta/deviceManagement/deploymentPlans
Content-Type: application/json

{
  "displayName": "Contoso standard rollout",
  "description": "Pilot followed by early adopters",
  "allowedAssignmentFilterPlatform": "windows10AndLater",
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
  ]
}
```

### Response

The following example shows the response.

<!-- {"blockType": "response", "name": "intune-gntgraphservice-deviceandappmanagementdeploymentplan-create-1-response", "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPlan"} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPlan",
  "id": "f47b2c1d-8e9a-4f63-b2c7-3d5e8a9f1c4b",
  "versionNumber": 1,
  "displayName": "Contoso standard rollout",
  "description": "Pilot followed by early adopters",
  "allowedAssignmentFilterPlatform": "windows10AndLater",
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
  "createdDateTime": "2026-11-05T13:00:00Z",
  "lastModifiedDateTime": "2026-11-05T13:00:00Z",
  "ringCount": 2
}
```
