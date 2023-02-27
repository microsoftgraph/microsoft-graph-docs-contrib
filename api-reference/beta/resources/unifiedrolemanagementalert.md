---
title: "unifiedRoleManagementAlert resource type"
description: "Represents an alert singleton that exposes alerts, alert definitions, and alert configuration in Privileged Identity Management (PIM) for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementAlert resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert singleton that exposes alerts, alert definitions, and alert configuration in Privileged Identity Management (PIM) for Azure AD roles.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementAlerts](../api/rolemanagementalert-list-alerts.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|Get a list of the [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) objects and their properties.|
|[Get unifiedRoleManagementAlert](../api/unifiedrolemanagementalert-get.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Read the properties and relationships of an [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object.|
|[Update unifiedRoleManagementAlert](../api/unifiedrolemanagementalert-update.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Update the properties of an [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object.|
|[refresh](../api/unifiedrolemanagementalert-refresh.md)|None|Refresh incidents on all alerts or on a single alert for Privileged Identity Management (PIM) for Azure AD roles.|
|[List alertIncidents](../api/unifiedrolemanagementalert-list-alertincidents.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Get the unifiedRoleManagementAlertIncident resources from the alertIncidents navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an alert definition. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|id|String|The identifier of the alert configuration. Inherited from [entity](../resources/entity.md).|
|incidentCount|Int32|The number of generated incidents of the alert. Can only be non-negative integer.|
|isActive|Boolean|False by default. True if the alert is active.|
|lastModifiedDateTime|DateTimeOffset|The date time when the alert configuration is updated or new incidents are generated.|
|lastScannedDateTime|DateTimeOffset|The date time when the alert is last scanned.|
|scopeId|String|The identifier of the scope where the alert is related. For example, directory id, application id, etc. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeType|String|The type of scope where the alert is created. DirectoryRole is the only currently supported scope type for Azure AD Roles. New types like Application and Group may be introduced later. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfiguration|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|The configuration of an alert for Azure AD roles. Pre-defined and cannot be created or deleted, but some configurations can be modified.|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Contains description, impact, mitigation, prevention to describe alerts.|
|alertIncidents|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Represents the actual alert incidents triggered in Privileged Identity Management (PIM).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlert",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlert",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeId": "String",
  "scopeType": "String",
  "incidentCount": "Integer",
  "isActive": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "lastScannedDateTime": "String (timestamp)"
}
```

