---
title: "unifiedRoleManagementAlert resource type"
description: "Represents the details of a security alert in Privileged Identity Management (PIM) for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementAlert resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a security alert in Privileged Identity Management (PIM) for Azure AD roles. The alert information includes the related definition and configuration, and the related incidents in the tenant.

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
|alertDefinitionId|String|The identifier of an [alert definition](unifiedrolemanagementalertdefinition.md). |
|id|String|The identifier of the [alert configuration](unifiedrolemanagementalertconfiguration.md). Inherited from [entity](../resources/entity.md).|
|incidentCount|Int32|The number of incidents triggered in the tenant and relating to the alert. Can only be a positive integer.|
|isActive|Boolean|`false` by default. `true` if the alert is active.|
|lastModifiedDateTime|DateTimeOffset|The date time when the alert configuration was updated or new incidents generated.|
|lastScannedDateTime|DateTimeOffset|The date time when the tenant was last scanned for incidents that trigger this alert.|
|scopeId|String|The identifier of the scope where the alert is related. For example, directory ID or application ID.|
|scopeType|String|The type of scope where the alert is created. `DirectoryRole` is the only currently supported scope type for Azure AD roles. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfiguration|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|The configuration of the alert in PIM for Azure AD roles. Alert configurations are pre-defined and cannot be created or deleted, but some configurations can be modified.|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Contains the description, impact, and measures to mitigate or prevent the security alert from being triggered in your tenant.|
|alertIncidents|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Represents the incidents of this alert that have been triggered in Privileged Identity Management (PIM) for Azure AD roles in the tenant.|

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

