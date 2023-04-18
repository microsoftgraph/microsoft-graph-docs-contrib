---
title: "sequentialActivationRenewalsAlertConfiguration resource type"
description: "Represents an alert configuration that is triggered if a user activates the same privileged role multiple times within the last 30 days."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# sequentialActivationRenewalsAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert configuration that is triggered if a user activates the same privileged role multiple times within the last 30 days.

Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an alert definition. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|id|String|The identifier of the alert configuration. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|True if the alert is enabled. Setting to false will disable scanning for the specific alert. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeId|String|The identifier of the scope where the alert is related. For example, directory id, application id, etc. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeType|String|The type of scope where the alert is created. DirectoryRole is the only currently supported scope type for Azure AD Roles. New types like Application and Group may be introduced later. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|sequentialActivationCounterThreshold|Int32|The minimum number of activations within the timeIntervalBetweenActivations period to trigger an alert.|
|timeIntervalBetweenActivations|Duration|Time interval between activations to trigger an alert.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Alert definition that contains description, impact, mitigation, prevention. Inherited from [microsoft.graph.unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sequentialActivationRenewalsAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sequentialActivationRenewalsAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean",
  "timeIntervalBetweenActivations": "String (duration)",
  "sequentialActivationCounterThreshold": "Integer"
}
```

