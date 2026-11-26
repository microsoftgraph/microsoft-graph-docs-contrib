---
title: "deviceAndAppManagementDeploymentPlan resource type"
description: "Represents a reusable ring configuration for staged deployments."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentPlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a reusable ring configuration for staged deployments.

Updating ring configuration increments **versionNumber**. A plan must always retain at least one ring template. Omitting **ringTemplates** from a PATCH request preserves the existing templates.

Specifying **deploymentPlanId** when creating a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) doesn't populate its rings automatically. The caller must copy the assignment configurations and convert each template's relative duration to an absolute UTC activation time. For example, delays of `P0D`, `P3D`, and `P4D` produce activation times at deployment start, three days later, and seven days after deployment start.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/intune-gntgraphservice-deviceandappmanagementdeploymentplan-list.md)|[deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md) collection|List the deployment plans.|
|[Create](../api/intune-gntgraphservice-deviceandappmanagementdeploymentplan-create.md)|[deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md)|Create a deployment plan.|
|[Get](../api/intune-gntgraphservice-deviceandappmanagementdeploymentplan-get.md)|[deviceAndAppManagementDeploymentPlan](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentplan.md)|Get a deployment plan.|
|[Update](../api/intune-gntgraphservice-deviceandappmanagementdeploymentplan-update.md)|None|Update a deployment plan.|
|[Delete](../api/intune-gntgraphservice-deviceandappmanagementdeploymentplan-delete.md)|None|Delete a deployment plan.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAssignmentFilterPlatform|[devicePlatformType](../resources/intune-gntgraphservice-deviceplatformtype.md)|The platform allowed for assignment filters. The default value is `android`. When `unknown`, assignment filters can't be configured. The possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`, `windowsMobileApplicationManagement`. Use `Prefer: include-unknown-enum-members` to retrieve `windowsMobileApplicationManagement`. Supports `$filter` (`eq`).|
|createdDateTime|DateTimeOffset|The UTC creation date and time in ISO 8601 format. Populated by the service. Read-only.|
|description|String|The description of the deployment plan. Maximum length is 1000 characters.|
|displayName|String|The display name. Required during creation and can't be cleared during updates. Maximum length is 256 characters. Supports `$filter` (`contains`) and `$orderby`.|
|id|String|The unique identifier of the deployment plan, generated when the plan is created. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The UTC last modification date and time in ISO 8601 format. Populated by the service. Read-only.|
|ringCount|Int32|The number of ring templates, computed by the service. Read-only.|
|ringTemplates|[deviceAndAppManagementDeploymentRingTemplate](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringtemplate.md) collection|The reusable ring templates. Required during creation. Contains 1 through 10 templates and can't be empty or null on creation or update. Returned only when explicitly selected with `$select` on a single plan; excluded from list responses.|
|roleScopeTagIds|String collection|The scope tag identifiers that control plan visibility. Contains 1 through 100 identifiers. Returned only when explicitly selected with `$select` on a single plan; excluded from list responses.|
|versionNumber|Int32|The version number, incremented automatically on each edit. From 1 through 1000. The default value is 1. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPlan"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentPlan",
  "id": "String",
  "versionNumber": "Int32",
  "displayName": "String",
  "description": "String",
  "roleScopeTagIds": [
    "String"
  ],
  "allowedAssignmentFilterPlatform": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "ringTemplates": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentRingTemplate"
    }
  ],
  "ringCount": "Int32"
}
```
