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

Represents the details of a security alert in [Privileged Identity Management (PIM) for Azure AD roles](privilegedidentitymanagementv3-overview.md). The alert information includes the related alert [definition](unifiedrolemanagementalertdefinition.md), [configuration](unifiedrolemanagementalertconfiguration.md), and [incident](unifiedrolemanagementalertincident.md) collection in the tenant.

Each security alert in PIM for Azure AD roles is of one of several types described in [Get security alerts for Azure AD roles](privilegedidentitymanagementv3-overview.md#security-alerts-for-azure-ad-roles). You can [list](../api/unifiedrolemanagementalert-list-alertincidents.md) details of the actual incidents of an alert using the **incidents** relationship. An alert and its related incidents are always of the same type. For example, an alert about too many global administrators in the tenant relates to incidents of the type [tooManyGlobalAdminsAssignedToTenantAlertIncident](toomanyglobaladminsassignedtotenantalertincident.md).  

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List alerts](../api/rolemanagementalert-list-alerts.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|Get a list of the [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) objects and their properties.|
|[Get unifiedRoleManagementAlert](../api/unifiedrolemanagementalert-get.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Read the properties and relationships of an [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object.|
|[Update unifiedRoleManagementAlert](../api/unifiedrolemanagementalert-update.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Update the properties of an [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object.|
|[refresh](../api/unifiedrolemanagementalert-refresh.md)|None|Refresh incidents on all alerts or on a single alert for Privileged Identity Management (PIM) for Azure AD roles.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an [alert definition](unifiedrolemanagementalertdefinition.md). Supports `$filter` (`eq`, `ne`).|
|id|String|The identifier of the [alert configuration](unifiedrolemanagementalertconfiguration.md). Inherited from [entity](../resources/entity.md).|
|incidentCount|Int32|The number of incidents triggered in the tenant and relating to the alert. Can only be a positive integer.|
|isActive|Boolean|`false` by default. `true` if the alert is active.|
|lastModifiedDateTime|DateTimeOffset|The date time when the alert configuration was updated or new incidents generated.|
|lastScannedDateTime|DateTimeOffset|The date time when the tenant was last scanned for incidents that trigger this alert.|
|scopeId|String|The identifier of the scope where the alert is related. `/` is the only supported one for the tenant. Supports `$filter` (`eq`, `ne`).|
|scopeType|String|The type of scope where the alert is created. `DirectoryRole` is the only currently supported scope type for Azure AD roles. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfiguration|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|The configuration of the alert in PIM for Azure AD roles. Alert configurations are pre-defined and cannot be created or deleted, but some configurations can be modified. Supports `$expand`.|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Contains the description, impact, and measures to mitigate or prevent the security alert from being triggered in your tenant. Supports `$expand`.|
|alertIncidents|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Represents the incidents of this type of alert that have been triggered in Privileged Identity Management (PIM) for Azure AD roles in the tenant. Supports `$expand`.|

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

