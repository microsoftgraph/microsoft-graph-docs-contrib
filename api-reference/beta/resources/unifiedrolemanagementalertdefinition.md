---
title: "unifiedRoleManagementAlertDefinition resource type"
description: "Represents the alert definition that contains the description, impact, and measures to mitigate or prevent a security alert from being triggered in your tenant in PIM for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the alert definition that contains the description, impact, and measures to mitigate or prevent a security [alert](unifiedrolemanagementalert.md) from being triggered in your tenant in [Privileged Identity Management (PIM) for Azure AD roles](privilegedidentitymanagementv3-overview.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List alertDefinitions](../api/rolemanagementalert-list-alertdefinitions.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get a list of the [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) objects and their properties.|
|[Get unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalertdefinition-get.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Read the properties and relationships of an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the alert.|
|displayName|String|The friendly display name that renders in Privileged Identity Management (PIM) alerts in the Azure portal.|
|howToPrevent|String|Long-form text that indicates the ways to prevent the alert from being triggered in your tenant.|
|id|String|The identifier of the alert definition. Inherited from [entity](../resources/entity.md).|
|isConfigurable|Boolean|`true` if the alert configuration can be customized in the tenant, and `false` otherwise. For example, the number and percentage thresholds of the 'There are too many global administrators' alert can be configured by users, while the 'This organization does not have Azure AD Premium P2' cannot be configured, because the criteria is restricted.|
|isRemediatable|Boolean|`true` if the alert can be remediated, and `false` otherwise.|
|mitigationSteps|String|The methods to mitigate the alert when it's triggered in the tenant. For example, to mitigate the 'There are too many global administrators', you could remove redundant privileged role assignments. |
|scopeId|String|The identifier of the scope where the alert is related. `/` is the only supported one for the tenant. Supports `$filter` (`eq`, `ne`).|
|scopeType|String|The type of scope where the alert is created. `DirectoryRole` is the only currently supported scope type for Azure AD Roles. |
|securityImpact|String|Security impact of the alert. For example, it could be information leaks or unauthorized access.|
|severityLevel|alertSeverity|Severity level of the alert. The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "scopeType": "String",
  "scopeId": "String",
  "description": "String",
  "severityLevel": "String",
  "securityImpact": "String",
  "mitigationSteps": "String",
  "howToPrevent": "String",
  "isRemediatable": "Boolean",
  "isConfigurable": "Boolean"
}
```

